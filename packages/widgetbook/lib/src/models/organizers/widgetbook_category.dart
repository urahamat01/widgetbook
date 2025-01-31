import 'package:widgetbook/src/models/organizers/expandable_organizer.dart';
import 'package:widgetbook/src/models/organizers/widgetbook_folder.dart';
import 'package:widgetbook/src/models/organizers/widgetbook_widget.dart';

/// Categories help to organize WidgetElements and Stories into different areas.
class WidgetbookCategory extends ExpandableOrganizer {
  WidgetbookCategory({
    required String name,
    List<WidgetbookFolder>? folders,
    List<WidgetbookWidget>? widgets,
  }) : super(
          name: name,
          folders: folders,
          widgets: widgets,
          isExpanded: true,
        ) {
    for (final ExpandableOrganizer organizer in this.folders) {
      organizer.parent = this;
    }
    for (final ExpandableOrganizer organizer in this.widgets) {
      organizer.parent = this;
    }
  }
}
