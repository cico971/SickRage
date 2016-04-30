<%inherit file="/layouts/main.mako"/>
<%block name="scripts">
<script type="text/javascript" src="${srRoot}/js/qualityChooser.js?${sbPID}"></script>
<script type="text/javascript" src="${srRoot}/js/addShowOptions.js?${sbPID}"></script>
</%block>
<%block name="content">
<div class="col-md-12">
    <div class="row">
        <div class="col-md-12">
            % if not header is UNDEFINED:
		        <h1 class="header">${header}</h1>
            % else:
		        <h1 class="title">${title}</h1>
            % endif
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
	        <div id="config-components">
		        <ul>
                    <li><a href="#core-component-group1">${_('Add Existing Show')}</a></li>
                </ul>

		        <div id="core-component-group1" class="tab-pane active component-group">

			        <form id="addShowForm" method="post" action="${srRoot}/addShows/addNewShow" accept-charset="utf-8">

				        <div id="tabs">
					        <ul>
						        <li><a href="#tabs-1">${_('Manage Directories')}</a></li>
						        <li><a href="#tabs-2">${_('Customize Options')}</a></li>
					        </ul>
					        <div id="tabs-1" class="existingtabs">
                                    <%include file="/inc_rootDirs.mako"/>
					        </div>
					        <div id="tabs-2" class="existingtabs">
                                    <%include file="/inc_addShowOptions.mako"/>
					        </div>
				        </div>
				        <br>
                        <div class="row">
                            <div class="col-md-12">
	                            <p><b>${_('SickRage can add existing shows, using the current options, by using locally stored NFO/XML metadata to eliminate user interaction. If you would rather have SickRage prompt you to customize each show, then use the checkbox below.')}:</b></p>
                            </div>
                        </div>
				        <div class="row">
					        <div class="col-md-12">
						        <p>
                                    <input type="checkbox" name="promptForSettings" id="promptForSettings" />
                                    <label for="promptForSettings">${_('Prompt me to set settings for each show')}</label>
                                </p>
				            </div>
				        </div>
				        <div class="row">
					        <div class="col-md-12">
						        <p><b>${_('Displaying folders within these directories which aren\'t already added to SickRage')}:</b></p>
				            </div>
				        </div>
				        <div class="row">
					        <div class="col-md-12">
						        <ul id="rootDirStaticList">
                                    <li></li>
                                </ul>
				            </div>
				        </div>
				        <div class="row">
					        <div class="col-md-12">
						        <div id="tableDiv" class="horizontal-scroll"></div>
				            </div>
				        </div>
                        <br/>
				        <div class="row">
					        <div class="col-md-12">
						        <input class="btn btn-primary" type="button" value="${_('Submit')}" id="submitShowDirs" />
				            </div>
				        </div>

			        </form>

		        </div>
	        </div>
        </div>
    </div>
</div>
</%block>
