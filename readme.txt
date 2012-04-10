********************************************************************************
SocialCloudz - A multi-tenant social management / presentation engine
Copyright 2011 by Bill Berzinskas
www.socialcloudz.com

********************************************************************************
WELCOME TO SocialCloudz
********************************************************************************

** NOTE: THIS VERSION IS A SANDBOX FOR CONVERTING THE EXISTING SYSTEM INTO COLDBOX / CONTENTBOX

Concept

Drag and drop platform for portraying social content in different ways given a context.
Allow users to maintain / brand different "sites" which are customizable representations
of different aspects of their lives.
Ex - I might have the following:

    a personal site with my blog and some feeds that i like
    a music group site for sharing news, media, etc
    a web development site
    Facebook
    Twitter
    Soundcloud

The problem to date is that traversing the relationship between all of my social media
has been somewhat segregated with alot of people leaning towards social media ONLY to
handle their needs. This puts the user into a branded environment for the services they've
chosen. But people should be free to brand / organize their content how ever they'd like!
Why shouldn't I have my own brand for syndicating all of these things into "channels"?

SocialCloudz aims to give users a completely customizable, easy to use platform
to empower their social media while giving them the white-label capability they desire.

The interface will be powered by jQuery + UI / Foundation CSS Framework / Coldbox / ContentBox / ValidBox / Wirebox.
Heavy use will be placed on jQuery dialogs, sortable, resizable. Additionally, several third party JS
API's will be used (google, facebook, etc). i18n will be used to provide locale specific interfaces.

The backend will leverage ORM and Nested Set Trees to deliver both fast development (with ORM) and fast
access to hierarchical data (NST). The Coldbox Cache will be used to cache at the interface level
bypassing both object and data caching, but this will be loosely coupled to the service layer to allow
caches to be expired. AOP should be used to wrap the service layer for data auditing, tree actions,
and cache operations

Base Software Stack

    Apache2
    Railo3
    MySql 5
    schema migrations

External CF libraries expected in the webroot

    ckeditor
    coldbox
    Hoth
    MXUnit (optional)
    CFCdoc (optional)

External libraries used in the app

    jQuery / UI
    Foundation CSS - http://foundation.zurb.com/
    Google Maps API
    jPlayer - HTML5 Audio / Video player
    jQuery Raty - Rating Widget
    jQuery File Upload - https://github.com/blueimp/jQuery-File-Upload
    https://github.com/cfaddict/solitary - solitary coldbox security module

Tools

    Redmine
    Jenkins


********************************************************************************
SYSTEM REQUIREMENTS
********************************************************************************
- Adobe ColdFusion 9.0.1 >
- Railo Latest
- Session Scope Enabled


AS ALWAYS, VISIT THE SITE FOR THE LATEST DOCUMENTATION

******************************************************************************** 
THE DAILY BREAD
********************************************************************************

 "I am the way, and the truth, and the life; no one comes to the Father, but by me (JESUS)" Jn 14:1-12