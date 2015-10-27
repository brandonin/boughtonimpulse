(function(g,i,t){g.execute(function(){g.when("jQuery","askAuthenticatedAjax","ready").register("askVoteControl",function(a,b){return{setup:function(f){f.delegate(".voteAjax form","submit",b.handler);f.delegate(".voteAjax form","ajax:beforeSend",function(b,e){var d=a(b.currentTarget),c=d.closest(".voteAjax");if(c.hasClass("up")&&d.hasClass("up")||c.hasClass("down")&&d.hasClass("down"))return b.preventDefault(),e.abort(),!1});f.delegate(".voteAjax form","ajax:error",function(h,e){if(401===e.status||
466===e.status)f.undelegate(".voteAjax form","submit",b.handler),a(h.currentTarget).trigger("submit")});f.delegate(".voteAjax form","ajax:success",function(b){var b=a(b.currentTarget),e=b.closest(".voteAjax"),d=e.find(".label"),c=e.find(".count"),f=b.hasClass("up")?1:-1,f=parseInt(d.attr("data-count"),10)+f;d.attr("data-count",f);c.text(""+f);e.attr("class","vote voteAjax "+b.attr("class"))})}}});g.when("jQuery","ready").register("askAuthenticatedAjax",function(a){return{handler:function(b,f){var h=
a(b.currentTarget),e=h.attr("action"),d=h.attr("method"),c=h.serializeArray(),j=h.attr("type"),e={url:e,type:d,data:c,dataType:j,timeout:f,beforeSend:function(c,b){b.dataType===t&&c.setRequestHeader("Accept","*/*;q=0.5, "+b.accepts.script);c.setRequestHeader("X-Requested-With","XMLHttpRequest");var d=a.Event("ajax:beforeSend");h.trigger(d,[c,b]);if(!1!==d.result)h.trigger("ajax:send",c);else return!1},success:function(a,c,b){h.trigger("ajax:success",[a,c,b])},complete:function(a,c){h.trigger("ajax:complete",
[a,c])},error:function(a,c,b){h.trigger("ajax:error",[a,c,b])}};if(!("withCredentials"in new XMLHttpRequest))return!0;e.xhrFields={withCredentials:!0};b.preventDefault();a.ajax(e)}}});g.when("jQuery","ready").execute(function(a){a("body").delegate(".askInlineWidget .cdShowLess, .askInlineWidget .cdReadMore","click touchstart",function(b){b.preventDefault();a(b.target).parents(".cdJSEnabledText").toggleClass("askShowMore")})});g.when("jQuery","ready").register("askLiveSearch",function(a){function b(){var b=
o.val(),h=a.trim(b);clearTimeout(c);h!==j&&(n===null&&(n=p(),a(".askLiveSearchSessionId").val(n)),h.length===0?(r(),d&&d.abort(),n=j=null):b.match(/\w\W+$/)?f(h):c=setTimeout(function(){f(h)},e))}function f(b){m();clearTimeout(c);d=a.ajax("/ask/livesearch/search",{type:"GET",data:{query:b,asin:g,forumId:i,liveSearchSessionId:n}}).done(l).fail(q);j=b}function h(a){return typeof a!=="function"?function(){}:a}var e=500,d,c,j,g,i,n=null,o,m,l,r,q,p=function(){function a(){return Math.floor((1+Math.random())*
65536).toString(16).substring(1)}return function(){return a()+a()+"-"+a()+"-"+a()+"-"+a()+"-"+a()+a()+a()}}();return{setup:function(c,d,e){o=c.find(d);var f=o.closest("form");g=a.trim(f.children("input.askAsin").val());i=a.trim(f.children("input.askForumId").val());m=h(e.liveSearchStartCallback);l=h(e.liveSearchDoneCallback);r=h(e.liveSearchClearCallback);q=h(e.liveSearchFailCallback);c.delegate(d,"keyup input",b)}}});g.when("A").execute(function(a){a.on("a:dropdown:selected:question_order_dropdown",
function(a){i.location=a.value})});g.when("jQuery","load").execute(function(a){var b=a(".askSubHeader");b.length>0&&!i.pageYOffset&&a("html, body").animate({scrollTop:b.offset().top},0)});g.when("jQuery","ready").execute(function(a){function b(){return a(i).scrollTop()+c>=a(document).height()-a(i).height()}function f(){b()&&e()}function h(){a("body").hasClass("allAnswersScrolling")?a(document).scroll(f):(a(".loadMoreAnswersMobile").show(),a(".loadMoreAnswersMobile").bind("touchstart click",e))}function e(){var c=
a(".answersLoadingSpinner"),i=a(".loadMoreAnswersMobile"),m=a.trim(a(".askPage input[name=askQuestion]").val()),l=a.trim(a(".askPage input[name=askSort]").val()),m="/ask/answers/inline/"+m+"/"+j+"?pageSize="+g+"&sort="+l;c.show();i.hide();a(".askMobileFailedToFetchMoreAnswers").hide();a(document).unbind("scroll",f);i.unbind("touchstart click",e);a.ajax({url:m,data:{},dataType:"html",cache:!1,timeout:k,success:function(f){c.hide();a(".askPage .answerBox > .a-box-inner").append(f);d&&(b()?e():d=!1);
a.trim(a("input[name=moreAnswersAfterPage"+j+"]").val())==="true"?h():a(".loadMoreAnswersMobile").hide();a(document).trigger("ajax:success");j+=1},error:function(){c.hide();a(".askMobileFailedToFetchMoreAnswers").show();h()}})}var d=!0,c=5,j=3,g=6,k=2E3;a("body").hasClass("allAnswersScrolling")&&(b()?e():d=!1,a(document).scroll(f));a(".loadMoreAnswersMobile").bind("touchstart click",e)});g.when("jQuery","ready").register("askMobileAllQuestionsPageInfiniteScroll",function(a){function b(){return a(i).scrollTop()+
g>=a(document).height()-a(i).height()}function f(){b()&&d()}function h(){c==="true"&&(a("body").hasClass("allQuestionsScrolling")?a(document).scroll(f):(l.show(),l.bind("touchstart click",d)))}function e(){l.hide();a(document).unbind("scroll",f);l.unbind("touchstart click",d)}function d(){var f=a.trim(a(".askPage input[name=askAsin]").val()),g=a.trim(a(".askPage input[name=askSort]").val()),f="/ask/questions/inline/"+f+"/"+k+"?pageSize="+n+"&sort="+g;m.show();e();a(".askMobileFailedToFetchMoreQuestions").hide();
a.ajax({url:f,data:{},dataType:"html",cache:!1,timeout:o,success:function(e){m.hide();a(".askPage .questionBox > .a-box-inner").append(e);j&&(b()?d():j=!1);c=a.trim(a("input[name=moreQuestionsAfterPage"+k+"]").val());h();c!=="true"&&l.hide();a(document).trigger("ajax:success");k+=1},error:function(){m.hide();a(".askMobileFailedToFetchMoreQuestions").show();h()}})}var c="true",j=!0,g=5,k=3,n=6,o=2E3,m,l;return{setup:function(){m=a(".questionsLoadingSpinner");l=a(".loadMoreQuestionsMobile");a("body").hasClass("allQuestionsScrolling")&&
(b()?d():j=!1,a(document).scroll(f));l.bind("touchstart click",d)},detachHandlers:e,reattachHandlers:h}});g.when("jQuery","ready").execute(function(a){var b=!0;a("body").delegate(".askQuestionForm","submit",function(e){var e=a(e.currentTarget),d=e.find("[name='askQuestionText'], [name='bodyText']"),c=d.val(),d=d.attr("placeholder");if(typeof c==="undefined"||c.match(/^\s*$/)||c===d)return e.attr("class","askQuestionForm hasEmptyQuestion"),!1;if(b)return b=!1,h(e,c,f),!1;e.attr("class","askQuestionForm");
return!0});var f=function(a,b){b?a.trigger("submit"):a.attr("class","askQuestionForm hasBadQuestion")},h=function(b,d,c){d.indexOf("?")>=0?c(b,!0):a.ajax({url:"/gp/customer-forum/dynamic-update/validate-post.html",dataType:"json",data:{body:d,checkIsQuestion:1},success:function(a){c(b,a.hasError||a.content.isQuestion);b.trigger("ajax:success")},error:function(){c(b,!0);b.trigger("ajax:error")}})}});g.when("jQuery","ready").register("askPostQuestionValidation",function(a){function b(b){var j=a(b.currentTarget),
g=d.val(),i=d.attr("placeholder");a(".askError").hide();if(typeof g==="undefined"||g.match(/^\s*$/)||g===i)return c.show(),b.stopImmediatePropagation(),j.trigger("askValidationComplete"),!1;return e?(e=!1,h(j,g,f),b.stopImmediatePropagation(),j.trigger("askValidationComplete"),!1):!0}function f(a,c){c?a.trigger("submit"):j.show()}function h(c,b,d){b.indexOf("?")>=0?d(c,!0):a.ajax({url:"/gp/customer-forum/dynamic-update/validate-post.html",dataType:"json",data:{body:b,checkIsQuestion:1},success:function(a){d(c,
a.hasError||a.content.isQuestion);c.trigger("askValidationComplete")},error:function(){d(c,!0);c.trigger("askValidationComplete")}})}var e=!0,d,c=a(".askEmptyQuestionError"),j=a(".askBadQuestionError");return{setup:function(a,c,e){d=e;a.delegate(c,"submit",b)}}});g.when("jQuery","ready").execute(function(a){function b(b){var e="/ask/questions/inline/"+a.trim(a(".askWidgetQuestions input.askAsin").val())+"/"+b;a.ajax({url:e,data:{},dataType:"html",cache:!1,timeout:f,success:function(d){a(".askInlineWidget .askFailedToFetchMoreQuestions").hide();
a(".askInlineWidget .askLoadMoreQuestions").hide();a(".askInlineWidget .askMoreQandAResults").append(d);a(".askInlineWidget .askTopQandALoadMoreQuestions").hide();d=b+1;a(".askWidgetQuestions input.nextPage").val(d);var d=document.getElementById("askInlineQuestionsPage-"+b),c;if(c=typeof d!=="undefined")if(c=d!==null)c=d.getBoundingClientRect(),c=!(c.top>=0&&c.left>=0&&c.bottom<=(i.innerHeight||a(i).height())&&c.right<=(i.innerWidth||a(i).width()));if(c){c=0;do c+=d.offsetTop||0,d=d.offsetParent;
while(d);d=c;a("html, body").animate({scrollTop:d},"slow")}},error:function(){a(".askInlineWidget .askFailedToFetchMoreQuestions").show()}})}var f=5E3;a("body").delegate(".askInlineWidget .askSeeMoreQuestionsLink","click",function(a){b(2);a.preventDefault()});a("body").delegate(".askInlineWidget .askLoadMoreQuestionsLink","click",function(f){var e=parseInt(a(".askWidgetQuestions input.nextPage").val(),10)||0;e>0&&(b(e),f.preventDefault())})});g.when("jQuery","ready").execute(function(a){"placeholder"in
document.createElement("textarea")||a(".askQuestionForm textarea").each(function(){a(this).val()===""&&a(this).attr("placeholder")!==""&&a(this).val(a(this).attr("placeholder"));a(this).focus(function(){a(this).val()===a(this).attr("placeholder")&&a(this).val("")});a(this).blur(function(){a(this).val()===""&&a(this).val(a(this).attr("placeholder"))})})});g.when("jQuery","ready").execute(function(a){function b(c){var c=document.getElementById(c),b;if(b=typeof c!=="undefined")if(b=c!==null)b=c.getBoundingClientRect(),
b=!(b.top>=0&&b.left>=0&&b.bottom<=(i.innerHeight||a(i).height())&&b.right<=(i.innerWidth||a(i).width()));if(b){b=0;do b+=c.offsetTop||0,c=c.offsetParent;while(c);c=b;a("html, body").animate({scrollTop:c},"slow")}}function f(c,e){c&&a.ajax({url:"/ask/answers/inline/"+c+"/"+e,data:{},dataType:"html",cache:!1,timeout:d,success:function(d){a(".askInlineWidget #failed-to-fetch-answers-"+c).hide();a(".askInlineWidget #askSeeAllAnswersLink-"+c).hide();a(".askInlineWidget .askCollapseAnswers-"+c).show();
a(".askInlineWidget .askLoadMoreAnswersLink-"+c).hide();a(".askInlineWidget #"+c).show();a(".askInlineWidget #"+c).append(d);h(c,e);b("askInlineAnswersPage-"+c+"-"+e)},error:function(){a(".askInlineWidget #failed-to-fetch-answers-"+c).show()}})}function h(b,d){a(".askWidgetQuestions input.currentAnswersPage-"+b).val(d)}function e(c){b("question-"+c);setTimeout(function(){a(".askInlineWidget #"+c).empty();a(".askInlineWidget .askCollapseAnswers-"+c).hide();a(".askInlineWidget #failed-to-fetch-answers-"+
c).hide();a(".askInlineWidget #askSeeAllAnswersLink-"+c).show()},500);h(c,1)}var d=5E3;a("body").delegate(".askInlineWidget .askWidgetSeeAllAnswersInline","click",function(b){var d=a(b.currentTarget).attr("data-questionId");f(d,1);b.preventDefault()});a("body").delegate(".askInlineWidget .askWidgetLoadMoreAnswersInline","click",function(b){var d=a(b.currentTarget).attr("data-questionId"),e=parseInt(a(".askWidgetQuestions input.currentAnswersPage-"+d).val(),10)||0;e>0&&(f(d,e+1),b.preventDefault())});
a("body").delegate("input[name='collapse-to-most-helpful-answer']","click",function(b){b=a(b.currentTarget).attr("data-questionId");e(b)})});g.when("jQuery","askVoteControl","askExpander","askLiveSearch","ready").register("askDetailPageWidget",function(a,b,f,h){function e(a){a.delegate(".askInlineWidget .askLiveSearchEnabled","keypress",function(a){(a.keyCode||a.which)===13&&a.preventDefault()})}var d={liveSearchStartCallback:function(){a(".askLiveSearchLoading").show()},liveSearchDoneCallback:function(b){a(".askInlineWidget .askMoreQandAResults").empty();
a(".askWidgetQuestions input.nextPage").val(2);a(".askInlineWidget .askTopQandALoadMoreQuestions").hide();a(".askLiveSearchLoading").hide();a(".askLiveSearchResults").html(b);a(".askWidgetQuestions").attr("class","askWidgetQuestions askLiveSearchShow");a(".askInlineWidget .askQuestionExamples").hide();a(".askQuestionForm").attr("class","askQuestionForm");a(".askPostQuestionButtonContainer").show();a(".askLiveSearchSuccessfulMessage").show();a(".askLiveSearchFailureMessage").hide()},liveSearchClearCallback:function(){a(".askLiveSearchLoading").hide();
a(".askWidgetQuestions").attr("class","askWidgetQuestions askLiveSearchHide");a(".askInlineWidget .askTopQandALoadMoreQuestions, .askInlineWidget .askQuestionExamples").show();a(".askPostQuestionButtonContainer").hide()},liveSearchFailCallback:function(){a(".askLiveSearchLoading").hide();a(".askWidgetQuestions").attr("class","askWidgetQuestions askLiveSearchHide");a(".askInlineWidget .askTopQandALoadMoreQuestions, .askInlineWidget .askQuestionExamples").show();a(".askPostQuestionButtonContainer").show();
a(".askLiveSearchSuccessfulMessage").hide();a(".askLiveSearchFailureMessage").show()}};return{setup:function(){var c=a("#cf-ask-cel");b.setup(c);f.setup(c);e(c);h.setup(c,".askInlineWidget .askLiveSearchEnabled",d)}}});g.when("jQuery","askVoteControl","askExpander","ready").register("askAllQuestionsPage",function(a,b,f){return{setup:function(){b.setup(a(".askTeaserQuestions"));f.setup(a(".askTeaserQuestions"))}}});g.when("jQuery","askInlinePostQuestion","askInlinePostQuestionResponse","askLiveSearch",
"askMobileLiveSearch","askMobileAllQuestionsPageInfiniteScroll","askPostQuestionValidation","ready").register("askMobileAllQuestionsPage",function(a,b,f,h,e,d,c){var g={liveSearchDoneCallback:function(b){a(".askError").hide();a(".questionsBoxGroup").hide();d.detachHandlers();e.showLiveSearchSuccess();a(".questionPostResponseContainer").hide();e.displayResults(b)},liveSearchClearCallback:function(){a(".askError").hide();a(".askLiveSearchResults").empty();a(".askMobilePostQuestionButtonContainer").hide();
a(".questionsBoxGroup").show();d.reattachHandlers()},liveSearchFailCallback:function(){a(".askError").hide();a(".askLiveSearchResults").empty();a(".questionsBoxGroup").show();d.reattachHandlers();e.showLiveSearchFailure()}};return{setup:function(){var i=a(".askMobileAllQuestionsPage");a(".loadMoreQuestionsMobile");c.setup(i,".askMobilePostQuestionForm",a("#askQuestionTextInput"));b.setup();f.setup();h.setup(i,"#askQuestionTextInput",g);d.setup();e.setupExpander()}}});g.when("jQuery","askExpander",
"ready").register("askMobileAllAnswersPage",function(a,b){return{setup:function(){b.setup(a(".answerBox"))}}});g.when("jQuery","askInlinePostQuestion","askInlinePostQuestionResponse","askLiveSearch","askMobileLiveSearch","askPostQuestionValidation","ready").register("askMobileDetailPageWidget",function(a,b,f,h,e,d){var c={liveSearchDoneCallback:function(b){a(".askError").hide();a(".questionsBoxGroup").hide();a(".questionPostResponseContainer").hide();e.showLiveSearchSuccess();e.displayResults(b);
a("#askQuestionTextInput").trigger("askLiveSearchComplete")},liveSearchClearCallback:function(){a(".askError").hide();a(".askLiveSearchResults").empty();a(".askMobilePostQuestionButtonContainer").hide();a(".questionsBoxGroup").show()},liveSearchFailCallback:function(){a(".askError").hide();a(".askLiveSearchResults").empty();a(".questionsBoxGroup").show();e.showLiveSearchFailure()}};return{setup:function(){var g=a(".askMobileDetailPageWidget");d.setup(g,".askMobilePostQuestionForm",a("#askQuestionTextInput"));
b.setup();f.setup();h.setup(g,"#askQuestionTextInput",c);e.setupExpander()}}});g.when("jQuery","askAuthenticatedAjax","ready").register("askInlinePostQuestion",function(a,b){function f(){k.delegate(".askMobilePostQuestionForm","submit",h);k.delegate(".askMobilePostQuestionForm","ajax:beforeSend",function(){a(".askError").hide()});k.delegate(".askMobilePostQuestionForm","ajax:send",e);k.delegate(".askMobilePostQuestionForm","ajax:error",function(b,c,e){e==="timeout"?a(".askMobileGenericPostQuestionError").show():
401===c.status||466===c.status?(k.undelegate(".askMobilePostQuestionForm","submit",h),a(b.currentTarget).trigger("submit"),k.delegate(".askMobilePostQuestionForm","submit",h)):a(".askMobilePostQuestionError").html(c.responseText).show();d()});k.delegate(".askMobilePostQuestionForm","ajax:success",function(b,c){o.val("");o.trigger("keyup");d();a(".questionPostResponseContainer").html(c).slideDown()})}function h(a){b.handler(a,i)}function e(){var b=o.val();a("#askQuestionTextDisabledInput").val(b);
a("#askQuestionTextInputWrapper").hide();a("#askQuestionTextDisabledInputWrapper").show();a("#askSubmitQuestion").hide();a(".askPostQuestionLoadingSpinner").show()}function d(){a("#askQuestionTextInputWrapper").show();a("#askQuestionTextDisabledInputWrapper").hide();a("#askSubmitQuestion").show();a(".askPostQuestionLoadingSpinner").hide()}function c(b){n.delegate(m,"focus",function(){var c=a("html,body").scrollTop(),c=b.offset().top+c;a("html,body").animate({scrollTop:c})})}function g(){k.delegate(m,
"keypress",function(a){(a.keyCode||a.which)===13&&a.preventDefault()})}var i=1E4,k=a(".askPage"),n=a(".askMobilePostQuestionForm"),o=a("#askQuestionTextInput"),m="#askQuestionTextInput";return{setup:function(){f();c(a(".askWidgetHeader"));g()}}});g.when("A","jQuery","askAuthenticatedAjax","a-modal","ready").register("askInlinePostQuestionResponse",function(a,b,f,h){function e(){i(b(".modalDeleteFormContainer"),".askMobileDeleteQuestionForm",n,g)}function d(){var a=b(".modalDeleteFormContainer"),c=
n,d=g;a.undelegate(".askMobileDeleteQuestionForm","submit",f.handler);a.undelegate(".askMobileDeleteQuestionForm","ajax:beforeSend",q);a.undelegate(".askMobileDeleteQuestionForm","ajax:error",d);a.undelegate(".askMobileDeleteQuestionForm","ajax:success",c)}function c(a,b){l(a,b,p,".askMobileEditQuestionForm")}function g(a,c){l(a,c,b(".modalDeleteFormContainer"),".askMobileDeleteQuestionForm")}function i(a,b,c,d){a.delegate(b,"submit",f.handler);a.delegate(b,"ajax:beforeSend",q);a.delegate(b,"ajax:error",
d);a.delegate(b,"ajax:success",c)}function k(a){q();b(".askMobilePostQuestionForm").hide();b(".askEditFormContainer").show();b(".successfulQuestionContainer").hide();var c=b(".inlineQuestionContent").text().trim();b(".askMobileEditQuestionForm").find("[name='askQuestionText']").val(c).focus();a.preventDefault()}function n(){r();p.slideUp().text("")}function o(a,c){m(a);b(".inlineQuestionContent").html(c)}function m(a){q();r();b(".askMobilePostQuestionForm").show();b(".askEditFormContainer").hide();
b(".successfulQuestionContainer").show();a.preventDefault()}function l(a,c,d,e){c.status===401||c.status===466?(d.undelegate(e,"submit",f.handler),b(a.currentTarget).submit()):(r(),b(".askInlineError").html(c.responseText).show())}function r(){h.get(b("#askDeleteModalPopover")).hide()}function q(){b(".askInlineError").hide();b(".askMobilePostQuestionError").hide();b(".askMobileGenericPostQuestionError").hide()}var p=b(".questionPostResponseContainer");return{setup:function(){p.delegate(".askOpenInlineEditForm",
"click",k);p.delegate(".askCancelInlineEdit","click",m);i(p,".askMobileEditQuestionForm",o,c);a.on("a:popover:beforeShow:deleteModalPopup",e);a.on("a:popover:beforeHide:deleteModalPopup",d)}}});g.when("jQuery","ready").register("askExpander",function(a){return{setup:function(b){b.delegate(".askExpanderContainer .askSeeMore","click",function(b){a(b.currentTarget).closest(".askExpanderContainer").addClass("askExpanderExpanded");b.preventDefault()});b.delegate(".askExpanderContainer .askSeeLess","click",
function(b){a(b.currentTarget).parents(".askExpanderContainer").removeClass("askExpanderExpanded");b.preventDefault()})}}});g.when("A","jQuery","ready").register("askMobileLiveSearch",function(a,b){return{displayResults:function(a){b.trim(a)?b(".askLiveSearchResults").html(a):(b(".askLiveSearchResults").empty(),b(".askNoResultsError").show())},showLiveSearchSuccess:function(){b(".askMobilePostQuestionButtonContainer").show();b(".askLiveSearchSuccessfulMessage").show();b(".askLiveSearchFailureMessage").hide()},
showLiveSearchFailure:function(){b(".askMobilePostQuestionButtonContainer").show();b(".askLiveSearchSuccessfulMessage").hide();b(".askLiveSearchFailureMessage").show()},setupExpander:function(){a.on("a:expander:askMobileLiveSearchResultExpander:toggle:expand",function(a){a=a.expander.$expander;a.find(".askMobileLiveSearchResultHeaderTextExpanded").css("display","block");a.find(".askMobileLiveSearchResultHeaderTextCollapsed").hide()});a.on("a:expander:askMobileLiveSearchResultExpander:toggle:collapse",
function(a){a=a.expander.$expander;a.find(".askMobileLiveSearchResultHeaderTextExpanded").hide();a.find(".askMobileLiveSearchResultHeaderTextCollapsed").css("display","block")})}}})})})(function(){var g=window.AmazonUIPageJS||window.P,i=g._namespace||g.attributeErrors;return i?i("AskAuiAssets"):g}(),window);