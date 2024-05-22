import 'package:flutterflow_ui/flutterflow_ui.dart';
import 'package:flutter/material.dart';

import '/model/event2_model.dart';
export '/model/event2_model.dart';

class Event2Widget extends StatefulWidget {
  const Event2Widget({super.key});

  @override
  State<Event2Widget> createState() => _Event2WidgetState();
}

class _Event2WidgetState extends State<Event2Widget> {
  late Event2Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Event2Model());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: Color(0xFF008635),
          automaticallyImplyLeading: false,
          leading: InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
             Navigator.of(context).pop(); 
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                'lib/assets/images/logo.png',
                width: 300,
                height: 200,
                fit: BoxFit.contain,
              ),
            ),
          ),
          title: Text(
            'Event: Internationalization Workshop Takes a Look at Global Education Strategies',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Outfit',
                  color: Colors.white,
                  fontSize: 22,
                  letterSpacing: 0,
                ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 2,
        ),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: AlignmentDirectional(0, 0),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(25, 20, 25, 10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        'lib/assets/images/2024-05-16_15_51_18-IZN_Formal.png',
                        width: 337.2,
                        height: 200,
                        fit: BoxFit.cover,
                        alignment: Alignment(0, 0),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(25, 0, 25, 5),
                  child: Text(
                    'May 16, 2024 - Dfezie Tipan',
                    textAlign: TextAlign.start,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          fontSize: 10,
                          letterSpacing: 0,
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(25, 20, 25, 10),
                  child: Text(
                    'Internationalization Workshop Takes a Look at Global Education Strategies',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          fontSize: 20,
                          letterSpacing: 0,
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(25, 0, 25, 0),
                  child: Text(
                    'The 1st Workshop on Internationalization took place last May 13-14, 2024, from 8:00 AM to 4:00 PM at the Nexus Atrium, 4th Floor. This event brought together educators, administrators, and internationalization experts to discuss and strategize the future of global engagement in higher education.\n\nThe workshop commenced with De La Salle Lipa Chancellor Dr. Erickson Martinez delivering the opening remarks, emphasizing the importance of internationalization in fostering global understanding and collaboration.\n\nLinkages Director Grace Sanchez provided an insightful workshop overview, outlining the key objectives and expected outcomes of the two-day event.\n\nVice Chancellor for Research and Innovation Br. Manuel Pajarillo FSC addressed the foundational question, \"What is Internationalization?\" His session highlighted the essence of internationalization in education, underscoring its role in enhancing cultural exchange, academic excellence, and global competitiveness.\n\nGuest Speaker Ms. Jennifer Montero detailed the essential components of an Internationalization Office. She explained how such an office can serve as a hub for coordinating international activities, supporting students and staff in global endeavors, and fostering international partnerships.\n\nThe first main session delved into four critical aspects of internationalization that include: (1) People, Program, Policies, Process; (2) Revisiting Initiatives & Issues, Opportunities, Milestones, Challenges; (3) Roles of the Internationalization Office; and (4) Understanding CMO 55 Series of 2016 and Other Mandates.\n\nDay 2 highlights dived into practical applications and strategic partnerships for internationalization.  In particular, the topics were: (1) Identifying Niche Areas/Program Matching; (2) Internationalization Academic Policies and Process; (3) Indicators for Global Institution Success; and, (4) Opportunities for Linkages and Collaborations. \n\nThe workshop concluded with closing remarks by Vice Chancellor for Academics Dr. Iezyl Torino, who summarized the key takeaways and encouraged participants to implement the insights gained. Dr. Torino emphasized the ongoing commitment required to advance internationalization efforts and the collective benefits of a globally engaged educational community. \n\nThe 1st Workshop on Internationalization provided participants with an understanding of internationalization\'s complexities and the tools needed to drive De La Salle Lipa towards greater global integration and recognition as part of its aspirational goals.',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          letterSpacing: 0,
                        ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
