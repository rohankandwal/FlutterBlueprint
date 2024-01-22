import 'package:flutter_blueprint/design_token/colors/molecules/color_tokens.dart';
import 'package:flutter_blueprint/design_token/colors/projects/admin_portal_color_tokens.dart';

enum ProjectsTheme {
  adminPortalLight,
  adminDark,
}

ColorTokens initializedWithBrand(ProjectsTheme projects) {
  switch(projects) {
    case ProjectsTheme.adminPortalLight:
      return AdminPortalColorTokens();
    default:
      throw UnimplementedError('No implementation found for the project');
  }
}