# app

A new Flutter project.

## Getting Started

taskflow_pro/
├── lib/
│   ├── main.dart
│   │
│   ├── core/                                    # 🔧 Core Infrastructure
│   │   ├── constants/
│   │   │   ├── app_constants.dart
│   │   │   ├── api_constants.dart
│   │   │   ├── asset_constants.dart
│   │   │   └── route_constants.dart
│   │   │
│   │   ├── enums/
│   │   │   ├── task_status.dart
│   │   │   ├── task_priority.dart
│   │   │   ├── notification_type.dart
│   │   │   └── user_role.dart
│   │   │
│   │   ├── extensions/
│   │   │   ├── date_time_extensions.dart
│   │   │   ├── string_extensions.dart
│   │   │   ├── context_extensions.dart
│   │   │   └── list_extensions.dart
│   │   │
│   │   ├── helpers/
│   │   │   ├── validation_helper.dart
│   │   │   ├── date_time_helper.dart
│   │   │   ├── file_helper.dart
│   │   │   └── permission_helper.dart
│   │   │
│   │   ├── themes/
│   │   │   ├── app_theme.dart
│   │   │   ├── dark_theme.dart
│   │   │   ├── light_theme.dart
│   │   │   └── theme_extensions.dart
│   │   │
│   │   ├── utils/
│   │   │   ├── logger_utils.dart
│   │   │   ├── validator_utils.dart
│   │   │   ├── formatter_utils.dart
│   │   │   └── exception_utils.dart
│   │   │
│   │   └── widgets/
│   │       ├── common/
│   │       │   ├── app_loading.dart
│   │       │   ├── app_error_widget.dart
│   │       │   ├── app_empty_state.dart
│   │       │   └── app_snackbar.dart
│   │       │
│   │       ├── buttons/
│   │       │   ├── primary_button.dart
│   │       │   ├── secondary_button.dart
│   │       │   ├── icon_button.dart
│   │       │   └── dropdown_button.dart
│   │       │
│   │       ├── inputs/
│   │       │   ├── app_text_field.dart
│   │       │   ├── app_search_field.dart
│   │       │   ├── app_dropdown.dart
│   │       │   └── app_date_picker.dart
│   │       │
│   │       └── dialogs/
│   │           ├── confirmation_dialog.dart
│   │           ├── loading_dialog.dart
│   │           └── error_dialog.dart
│   │
│   ├── features/                                # 🎯 Feature Modules (Main Business Logic)
│   │   │
│   │   ├── auth/                                # 🔐 Authentication Feature
│   │   │   ├── data/
│   │   │   │   ├── models/
│   │   │   │   │   ├── user_model.dart
│   │   │   │   │   ├── login_request.dart
│   │   │   │   │   ├── register_request.dart
│   │   │   │   │   └── auth_response.dart
│   │   │   │   │
│   │   │   │   ├── repositories/
│   │   │   │   │   ├── auth_repository.dart
│   │   │   │   │   └── auth_repository_impl.dart
│   │   │   │   │
│   │   │   │   └── datasources/
│   │   │   │       ├── auth_local_datasource.dart
│   │   │   │       └── auth_remote_datasource.dart
│   │   │   │
│   │   │   ├── domain/
│   │   │   │   ├── entities/
│   │   │   │   │   └── user_entity.dart
│   │   │   │   │
│   │   │   │   ├── usecases/
│   │   │   │   │   ├── login_usecase.dart
│   │   │   │   │   ├── register_usecase.dart
│   │   │   │   │   ├── logout_usecase.dart
│   │   │   │   │   └── get_current_user_usecase.dart
│   │   │   │   │
│   │   │   │   └── repositories/
│   │   │   │       └── auth_repository_interface.dart
│   │   │   │
│   │   │   └── presentation/
│   │   │       ├── providers/
│   │   │       │   └── auth_provider.dart
│   │   │       │
│   │   │       ├── screens/
│   │   │       │   ├── login_screen.dart
│   │   │       │   ├── register_screen.dart
│   │   │       │   ├── forgot_password_screen.dart
│   │   │       │   └── otp_verification_screen.dart
│   │   │       │
│   │   │       └── widgets/
│   │   │           ├── login_form.dart
│   │   │           ├── register_form.dart
│   │   │           └── social_login_buttons.dart
│   │   │
│   │   ├── tasks/                               # 📋 Task Management Feature
│   │   │   ├── data/
│   │   │   │   ├── models/
│   │   │   │   │   ├── task_model.dart
│   │   │   │   │   ├── task_filter_model.dart
│   │   │   │   │   └── task_comment_model.dart
│   │   │   │   │
│   │   │   │   ├── repositories/
│   │   │   │   │   ├── task_repository.dart
│   │   │   │   │   └── task_repository_impl.dart
│   │   │   │   │
│   │   │   │   └── datasources/
│   │   │   │       └── task_remote_datasource.dart
│   │   │   │
│   │   │   ├── domain/
│   │   │   │   ├── entities/
│   │   │   │   │   ├── task_entity.dart
│   │   │   │   │   └── task_comment_entity.dart
│   │   │   │   │
│   │   │   │   ├── usecases/
│   │   │   │   │   ├── create_task_usecase.dart
│   │   │   │   │   ├── update_task_usecase.dart
│   │   │   │   │   ├── delete_task_usecase.dart
│   │   │   │   │   ├── get_tasks_usecase.dart
│   │   │   │   │   ├── get_task_by_id_usecase.dart
│   │   │   │   │   ├── assign_task_usecase.dart
│   │   │   │   │   └── add_task_comment_usecase.dart
│   │   │   │   │
│   │   │   │   └── repositories/
│   │   │   │       └── task_repository_interface.dart
│   │   │   │
│   │   │   └── presentation/
│   │   │       ├── providers/
│   │   │       │   ├── task_provider.dart
│   │   │       │   ├── task_filter_provider.dart
│   │   │       │   └── task_detail_provider.dart
│   │   │       │
│   │   │       ├── screens/
│   │   │       │   ├── task_list_screen.dart
│   │   │       │   ├── task_detail_screen.dart
│   │   │       │   ├── create_task_screen.dart
│   │   │       │   └── edit_task_screen.dart
│   │   │       │
│   │   │       └── widgets/
│   │   │           ├── task_card.dart
│   │   │           ├── task_filter_chips.dart
│   │   │           ├── task_status_dropdown.dart
│   │   │           ├── task_priority_badge.dart
│   │   │           ├── task_comment_list.dart
│   │   │           ├── task_attachment_list.dart
│   │   │           └── task_progress_indicator.dart
│   │   │
│   │   ├── projects/                            # 📁 Project Management Feature
│   │   │   ├── data/
│   │   │   │   ├── models/
│   │   │   │   │   ├── project_model.dart
│   │   │   │   │   ├── project_member_model.dart
│   │   │   │   │   └── project_invite_model.dart
│   │   │   │   │
│   │   │   │   ├── repositories/
│   │   │   │   │   ├── project_repository.dart
│   │   │   │   │   └── project_repository_impl.dart
│   │   │   │   │
│   │   │   │   └── datasources/
│   │   │   │       └── project_remote_datasource.dart
│   │   │   │
│   │   │   ├── domain/
│   │   │   │   ├── entities/
│   │   │   │   │   ├── project_entity.dart
│   │   │   │   │   └── project_member_entity.dart
│   │   │   │   │
│   │   │   │   └── usecases/
│   │   │   │       ├── create_project_usecase.dart
│   │   │   │       ├── update_project_usecase.dart
│   │   │   │       ├── delete_project_usecase.dart
│   │   │   │       ├── get_projects_usecase.dart
│   │   │   │       ├── get_project_by_id_usecase.dart
│   │   │   │       ├── invite_member_usecase.dart
│   │   │   │       └── remove_member_usecase.dart
│   │   │   │
│   │   │   └── presentation/
│   │   │       ├── providers/
│   │   │       │   ├── project_provider.dart
│   │   │       │   └── project_member_provider.dart
│   │   │       │
│   │   │       ├── screens/
│   │   │       │   ├── project_list_screen.dart
│   │   │       │   ├── project_detail_screen.dart
│   │   │       │   ├── create_project_screen.dart
│   │   │       │   └── project_members_screen.dart
│   │   │       │
│   │   │       └── widgets/
│   │   │           ├── project_card.dart
│   │   │           ├── project_member_avatar.dart
│   │   │           ├── project_progress_card.dart
│   │   │           └── project_invite_dialog.dart
│   │   │
│   │   ├── notifications/                       # 🔔 Notification Feature
│   │   │   ├── data/
│   │   │   │   ├── models/
│   │   │   │   │   └── notification_model.dart
│   │   │   │   │
│   │   │   │   └── repositories/
│   │   │   │       ├── notification_repository.dart
│   │   │   │       └── notification_repository_impl.dart
│   │   │   │
│   │   │   ├── domain/
│   │   │   │   ├── entities/
│   │   │   │   │   └── notification_entity.dart
│   │   │   │   │
│   │   │   │   └── usecases/
│   │   │   │       ├── get_notifications_usecase.dart
│   │   │   │       ├── mark_as_read_usecase.dart
│   │   │   │       └── delete_notification_usecase.dart
│   │   │   │
│   │   │   └── presentation/
│   │   │       ├── providers/
│   │   │       │   └── notification_provider.dart
│   │   │       │
│   │   │       ├── screens/
│   │   │       │   └── notification_list_screen.dart
│   │   │       │
│   │   │       └── widgets/
│   │   │           ├── notification_card.dart
│   │   │           └── notification_badge.dart
│   │   │
│   │   └── profile/                             # 👤 User Profile Feature
│   │       ├── data/
│   │       │   ├── models/
│   │       │   │   └── profile_model.dart
│   │       │   │
│   │       │   └── repositories/
│   │       │       ├── profile_repository.dart
│   │       │       └── profile_repository_impl.dart
│   │       │
│   │       ├── domain/
│   │       │   ├── entities/
│   │       │   │   └── profile_entity.dart
│   │       │   │
│   │       │   └── usecases/
│   │       │       ├── get_profile_usecase.dart
│   │       │       ├── update_profile_usecase.dart
│   │       │       └── change_password_usecase.dart
│   │       │
│   │       └── presentation/
│   │           ├── providers/
│   │           │   └── profile_provider.dart
│   │           │
│   │           ├── screens/
│   │           │   ├── profile_screen.dart
│   │           │   └── edit_profile_screen.dart
│   │           │
│   │           └── widgets/
│   │               ├── profile_header.dart
│   │               ├── profile_menu_item.dart
│   │               └── profile_avatar.dart
│   │
│   ├── shared/                                  # ♻️ Shared Resources Across Features
│   │   ├── data/
│   │   │   ├── models/
│   │   │   │   ├── api_response.dart
│   │   │   │   ├── pagination_response.dart
│   │   │   │   └── error_response.dart
│   │   │   │
│   │   │   └── repositories/
│   │   │       └── base_repository.dart
│   │   │
│   │   ├── domain/
│   │   │   ├── entities/
│   │   │   │   └── base_entity.dart
│   │   │   │
│   │   │   └── usecases/
│   │   │       └── base_usecase.dart
│   │   │
│   │   └── presentation/
│   │       ├── providers/
│   │       │   ├── app_provider.dart
│   │       │   ├── theme_provider.dart
│   │       │   └── connectivity_provider.dart
│   │       │
│   │       ├── screens/
│   │       │   ├── splash_screen.dart
│   │       │   ├── home_screen.dart
│   │       │   ├── main_navigation_screen.dart
│   │       │   └── not_found_screen.dart
│   │       │
│   │       └── widgets/
│   │           ├── app_drawer.dart
│   │           ├── app_bottom_navigation.dart
│   │           ├── app_scaffold.dart
│   │           └── network_image_with_placeholder.dart
│   │
│   ├── services/                               # 🌐 External Services
│   │   ├── api/
│   │   │   ├── api_client.dart
│   │   │   ├── api_interceptor.dart
│   │   │   ├── api_endpoints.dart
│   │   │   └── api_exception.dart
│   │   │
│   │   ├── storage/
│   │   │   ├── secure_storage_service.dart
│   │   │   ├── shared_preferences_service.dart
│   │   │   └── database_service.dart
│   │   │
│   │   ├── notification/
│   │   │   ├── push_notification_service.dart
│   │   │   └── local_notification_service.dart
│   │   │
│   │   ├── file/
│   │   │   ├── file_upload_service.dart
│   │   │   └── file_download_service.dart
│   │   │
│   │   ├── socket/
│   │   │   └── socket_service.dart
│   │   │
│   │   └── logging/
│   │       └── logger_service.dart
│   │
│   ├── config/                                  # ⚙️ App Configuration
│   │   ├── app_config.dart
│   │   ├── environment_config.dart
│   │   ├── app_routes.dart
│   │   └── dependency_injection.dart
│   │
│   └── localization/                           # 🌍 Internationalization
│       ├── app_localizations.dart
│       ├── app_localizations_delegate.dart
│       └── translations/
│           ├── en.json
│           ├── es.json
│           ├── fr.json
│           └── hi.json
│
├── assets/                                     # 📦 Static Assets
│   ├── images/
│   │   ├── icons/
│   │   │   ├── app_icon.png
│   │   │   ├── logo.png
│   │   │   └── logo_white.png
│   │   │
│   │   ├── illustrations/
│   │   │   ├── empty_state.svg
│   │   │   ├── error_state.svg
│   │   │   └── loading_state.svg
│   │   │
│   │   └── backgrounds/
│   │       ├── login_background.png
│   │       └── splash_background.png
│   │
│   ├── fonts/
│   │   ├── poppins/
│   │   │   ├── Poppins-Regular.ttf
│   │   │   ├── Poppins-Medium.ttf
│   │   │   └── Poppins-Bold.ttf
│   │   │
│   │   └── icons/
│   │       ├── taskflow_icons.ttf
│   │       └── taskflow_icons.json
│   │
│   └── translations/
│       ├── en.json
│       ├── es.json
│       └── fr.json
│
├── test/                                       # 🧪 Testing
│   ├── unit/
│   │   ├── core/
│   │   │   ├── extensions/
│   │   │   └── helpers/
│   │   │
│   │   ├── features/
│   │   │   ├── auth/
│   │   │   │   ├── data/
│   │   │   │   ├── domain/
│   │   │   │   └── presentation/
│   │   │   │
│   │   │   └── tasks/
│   │   │       ├── data/
│   │   │       ├── domain/
│   │   │       └── presentation/
│   │   │
│   │   └── shared/
│   │
│   ├── widget/
│   │   ├── auth/
│   │   ├── tasks/
│   │   └── shared/
│   │
│   ├── integration/
│   │   ├── auth_flow_test.dart
│   │   ├── task_flow_test.dart
│   │   └── project_flow_test.dart
│   │
│   ├── mocks/
│   │   ├── mock_auth_repository.dart
│   │   ├── mock_task_repository.dart
│   │   └── mock_api_client.dart
│   │
│   └── test_helpers/
│       ├── test_utils.dart
│       ├── test_widgets.dart
│       └── test_data.dart
│
├── build/                                      # 📁 Build Output (Generated)
│   ├── app/
│   ├── ios/
│   ├── android/
│   ├── web/
│   └── windows/
│
├── .dart_tool/                                # 🔧 Dart Tool
├── .idea/                                     # 💡 IDE Configuration
├── .vscode/                                   # 🖥️ VS Code Config
│   ├── launch.json
│   ├── settings.json
│   └── extensions.json
│
├── android/                                   # 🤖 Android Platform
├── ios/                                       # 🍎 iOS Platform
├── web/                                       # 🌐 Web Platform
├── windows/                                   # 🪟 Windows Platform
├── macos/                                     # 🍏 macOS Platform
├── linux/                                     # 🐧 Linux Platform
│
├── .env                                        # 🔐 Environment Variables
├── .env.example                                # 📝 Environment Example
├── .gitignore                                  # 🚫 Git Ignore
├── .metadata                                   # 📊 Flutter Metadata
├── .pre-commit-config.yaml                    # 🔒 Pre-commit Hooks
│
├── pubspec.yaml                                # 📦 Dependencies
├── pubspec.lock                                # 🔒 Locked Dependencies
│
├── analysis_options.yaml                       # 📋 Lint Rules
├── README.md                                   # 📖 Documentation
├── CHANGELOG.md                                # 📝 Change Log
├── LICENSE                                     # ⚖️ License
│
└── CONTRIBUTING.md                            # 🤝 Contribution Guide