import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hye_grocery/application/profile/profile_bloc.dart';
import 'package:hye_grocery/application/user/user_bloc.dart';
import 'package:hye_grocery/presentation/core/theme/colors.dart';
import 'package:hye_grocery/presentation/core/widgets/circle_image.dart';
import 'package:hye_grocery/presentation/core/theme/dimensions.dart';
import 'package:hye_grocery/presentation/core/widgets/rect_button.dart';
import 'package:hye_grocery/presentation/root/user/widgets/edit_user_field.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({Key? key}) : super(key: key);

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  @override
  void initState() {
    context.read<ProfileBloc>().add(const ProfileEvent.resetState());
    var user = context.read<UserBloc>().state.user;
    if (user != null) {
      context.read<ProfileBloc>().add(ProfileEvent.setEditUsername(
          user.userName.value.getOrElse(() => "")));
      context.read<ProfileBloc>().add(ProfileEvent.setEditPhonenumber(
          user.phoneNo!.value.getOrElse(() => "")));
    }

    super.initState();
  }

  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  showEditImageDialog() {
    showDialog(
        context: context,
        builder: (_) => SimpleDialog(
              children: [
                ListTile(
                  onTap: () async {
                    Navigator.of(context, rootNavigator: true).pop();
                    final result = await FilePicker.platform.pickFiles(
                        type: FileType.image, dialogTitle: "Select Image");
                    if (result != null) {
                      File file = File(result.files.single.path!);
                      if (await file.exists()) {
                        context.read<ProfileBloc>().add(
                            ProfileEvent.updateProfileImage(
                                fileName: result.files.single.name,
                                file: file));
                      }
                    }
                  },
                  leading: const Icon(Icons.image),
                  title: const Text("Choose from gallery"),
                ),
                ListTile(
                    onTap: () {},
                    leading: const Icon(Icons.camera),
                    title: const Text("Choose from camera")),
                ListTile(
                    onTap: () {
                      Navigator.of(context, rootNavigator: true).pop();
                      final isl = context
                          .read<UserBloc>()
                          .state
                          .user!
                          .photoStorageLocation;
                      if (isl != null) {
                        context.read<ProfileBloc>().add(
                            ProfileEvent.deleteProfileImage(
                                imageStorageLocation: isl));
                      }
                    },
                    leading: const Icon(Icons.close),
                    title: const Text("Remove Image")),
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        appBar: AppBar(
          leading: IconButton(
              color: Colors.black,
              icon: const Icon(Icons.arrow_back_rounded),
              onPressed: () => AutoRouter.of(context).pop()),
          title: const Text("Edit Profile"),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          titleTextStyle: Theme.of(context)
              .primaryTextTheme
              .bodyLarge!
              .copyWith(
                  color: Colors.black.withOpacity(0.7),
                  fontWeight: FontWeight.bold),
        ),
        body: BlocBuilder<UserBloc, UserState>(
          builder: (uContext, uState) {
            return SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 20.0),
                  Container(
                    margin: EdgeInsets.symmetric(
                        horizontal: HDimensions.pageMargin),
                    child: Stack(
                      children: [
                        Align(
                            alignment: Alignment.center,
                            child: Hero(
                              tag: "edit_image",
                              child: BlocBuilder<ProfileBloc, ProfileState>(
                                builder: (context, state) {
                                  return CircleImage(
                                    image: uState.user!.photoUrl == null ||
                                            uState.user!.photoUrl!
                                                .trim()
                                                .isEmpty
                                        ? Image.asset(
                                                "assets/images/default_user_image.png")
                                            .image
                                        : Image.network(
                                                uState.user!.photoUrl ?? "")
                                            .image,
                                    loading: state.isImageLoading,
                                  );
                                },
                              ),
                            )),
                        Positioned(
                          right: 100.0,
                          top: 70.0,
                          child: GestureDetector(
                            onTap: () => showEditImageDialog(),
                            child: Container(
                                height: 30.0,
                                width: 30.0,
                                decoration: BoxDecoration(
                                    color: HColors.cardColor,
                                    borderRadius: BorderRadius.circular(25.0)),
                                child: Icon(
                                  Icons.edit,
                                  color: HColors.iconColor,
                                )),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  const EditProfileForm(),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

class EditProfileForm extends StatefulWidget {
  const EditProfileForm({Key? key}) : super(key: key);

  @override
  State<EditProfileForm> createState() => _EditProfileFormState();
}

class _EditProfileFormState extends State<EditProfileForm> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProfileBloc, ProfileState>(
      listener: (context, state) {
        state.imageDeleteFailureOrSuccess.map((either) => either.fold((l) {
              context.read<UserBloc>().add(const UserEvent.getCurrentUser());
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text("Image unchanged")),
              );
            }, (r) {
              context.read<UserBloc>().add(const UserEvent.getCurrentUser());
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text("Image removed successfully!")),
              );
            }));
        state.imageEditFailureOrSuccess.map(
          (either) => either.fold(
              (l) => l.maybeMap(
                  orElse: () {},
                  imageEditFailure: (f) {
                    context
                        .read<UserBloc>()
                        .add(const UserEvent.getCurrentUser());
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                          content: Text("Image change unsuccessful!")),
                    );
                  }), (r) {
            context.read<UserBloc>().add(const UserEvent.getCurrentUser());

            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text("Image changed successfully!")),
            );
          }),
        );
        state.editFailureOrSuccess.map(
          (either) => either.fold(
            (l) {
              l.maybeMap(
                orElse: () {},
                profileEditFailure: (l) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Edit unsuccessful!")),
                  );
                },
              );
            },
            (r) {
              context.read<UserBloc>().add(const UserEvent.getCurrentUser());
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Edit successful!")));
            },
          ),
        );
      },
      builder: (context, state) {
        return Form(
            autovalidateMode: state.showEditErrorMessage
                ? AutovalidateMode.always
                : AutovalidateMode.disabled,
            child: Column(
              children: [
                EditUserField(
                  initialValue: context
                      .read<UserBloc>()
                      .state
                      .user!
                      .userName
                      .getOrCrash(),
                  prefixIcon: Icons.person,
                  label: "Username",
                  onChanged: (value) => context
                      .read<ProfileBloc>()
                      .add(ProfileEvent.setEditUsername(value)),
                  validator: (_) => context
                      .read<ProfileBloc>()
                      .state
                      .editUsername
                      .value
                      .fold(
                          (f) => f.maybeMap(
                              emptyUserName: (_) =>
                                  'This field cannot be empty',
                              orElse: () => null),
                          (r) => null),
                ),
                const SizedBox(height: 10),
                EditUserField(
                  initialValue: context
                      .read<UserBloc>()
                      .state
                      .user!
                      .emailAddress
                      .getOrCrash(),
                  prefixIcon: Icons.email_rounded,
                  label: "Email",
                  enable: false,
                ),
                const SizedBox(height: 10.0),
                EditUserField(
                  initialValue: context
                      .read<UserBloc>()
                      .state
                      .user!
                      .phoneNo!
                      .getOrCrash(),
                  prefixIcon: Icons.phone_rounded,
                  label: "Mobile phone number",
                  keyboardType: TextInputType.phone,
                  onChanged: (value) => context
                      .read<ProfileBloc>()
                      .add(ProfileEvent.setEditPhonenumber(value)),
                  validator: (value) => context
                      .read<ProfileBloc>()
                      .state
                      .editPhonenumber
                      .value
                      .fold(
                          (f) => f.maybeMap(
                              invalidPhoneNumber: (_) => 'Invalid phone number',
                              orElse: () => null),
                          (r) => null),
                ),
                const SizedBox(height: 15.0),
                Visibility(
                  visible: context.read<ProfileBloc>().state.isEditing,
                  maintainSize: true,
                  maintainAnimation: true,
                  maintainState: true,
                  child: Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: HDimensions.pageMargin),
                    child: LinearProgressIndicator(color: HColors.primaryColor),
                  ),
                ),
                const SizedBox(height: 15.0),
                Container(
                  margin:
                      EdgeInsets.symmetric(horizontal: HDimensions.pageMargin),
                  child: RectButton(
                      text: "Save",
                      onTap: () {
                        context
                            .read<ProfileBloc>()
                            .add(const ProfileEvent.updateUserProfile());
                      }),
                ),
              ],
            ));
      },
    );
  }
}
