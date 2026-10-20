###### Class io.didomi.drawable.V (io.didomi.sdk.V)
.class public final Lio/didomi/sdk/V;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/didomi/sdk/V$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00b2\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u001e\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0018\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0018\u0000 Q2\u00020\u0001:\u0001\u0012B7\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ%\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u00102\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J1\u0010\u0012\u001a\u00020\u001b2\u0006\u0010\u0015\u001a\u00020\u00142\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u00162\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\u0018H\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u001cJ\u0017\u0010\u001f\u001a\u00020\u001e2\u0006\u0010\u001d\u001a\u00020\u0014H\u0002\u00a2\u0006\u0004\u0008\u001f\u0010 J\u0017\u0010!\u001a\u00020\u001e2\u0006\u0010\u001d\u001a\u00020\u0014H\u0002\u00a2\u0006\u0004\u0008!\u0010 J\u000f\u0010\"\u001a\u00020\u001eH\u0002\u00a2\u0006\u0004\u0008\"\u0010#J\u0017\u0010\u0012\u001a\u00020\u001e2\u0006\u0010$\u001a\u00020\u001bH\u0002\u00a2\u0006\u0004\u0008\u0012\u0010%J\u0017\u0010(\u001a\u00020\u001b2\u0006\u0010\'\u001a\u00020&H\u0002\u00a2\u0006\u0004\u0008(\u0010)J-\u0010\u001f\u001a\u00020\u001b2\u000c\u0010*\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u00102\u000e\u0010,\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010+0\u0010H\u0002\u00a2\u0006\u0004\u0008\u001f\u0010-J/\u0010!\u001a\u00020\u001e2\u000e\u0010.\u001a\n\u0012\u0004\u0012\u00020&\u0018\u00010\u00102\u000e\u0010/\u001a\n\u0012\u0004\u0012\u00020&\u0018\u00010\u0010H\u0002\u00a2\u0006\u0004\u0008!\u00100J\u0017\u0010\u0012\u001a\u00020\u00142\u0006\u0010\u001d\u001a\u00020\u0014H\u0002\u00a2\u0006\u0004\u0008\u0012\u00101J\u001b\u0010\u0012\u001a\u00020\u001e2\u000c\u00103\u001a\u0008\u0012\u0004\u0012\u00020\u001e02\u00a2\u0006\u0004\u0008\u0012\u00104J\r\u00105\u001a\u00020\u001e\u00a2\u0006\u0004\u00085\u0010#J1\u0010\u0012\u001a\u00020\u00142\u0006\u00107\u001a\u0002062\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u00162\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\u0018H\u0000\u00a2\u0006\u0004\u0008\u0012\u00108J\r\u00109\u001a\u00020\u001e\u00a2\u0006\u0004\u00089\u0010#J!\u0010\u0012\u001a\u00020\u001e2\u0008\u0010:\u001a\u0004\u0018\u00010\u00162\u0008\u0010;\u001a\u0004\u0018\u00010&\u00a2\u0006\u0004\u0008\u0012\u0010<J\u0015\u0010>\u001a\u00020\u001b2\u0006\u0010=\u001a\u00020&\u00a2\u0006\u0004\u0008>\u0010)J\u0015\u0010\u0012\u001a\u00020@2\u0006\u0010?\u001a\u00020&\u00a2\u0006\u0004\u0008\u0012\u0010AJ\u0015\u0010!\u001a\u00020@2\u0006\u0010?\u001a\u00020&\u00a2\u0006\u0004\u0008!\u0010AJ\u0015\u0010\u001f\u001a\u00020@2\u0006\u0010=\u001a\u00020&\u00a2\u0006\u0004\u0008\u001f\u0010AJ\u0015\u0010B\u001a\u00020@2\u0006\u0010=\u001a\u00020&\u00a2\u0006\u0004\u0008B\u0010AJ\u008f\u0001\u0010\u0012\u001a\u00020\u001b2\u000e\u0010C\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u00102\u000e\u0010D\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u00102\u000e\u0010E\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u00102\u000e\u0010F\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u00102\u000e\u0010G\u001a\n\u0012\u0004\u0012\u00020+\u0018\u00010\u00102\u000e\u0010H\u001a\n\u0012\u0004\u0012\u00020+\u0018\u00010\u00102\u000e\u0010I\u001a\n\u0012\u0004\u0012\u00020+\u0018\u00010\u00102\u000e\u0010J\u001a\n\u0012\u0004\u0012\u00020+\u0018\u00010\u0010H\u0000\u00a2\u0006\u0004\u0008\u0012\u0010KJ#\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u00102\u000e\u0010M\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010L\u00a2\u0006\u0004\u0008\u0012\u0010NJ)\u0010\u0012\u001a\u00020\u001b2\u000c\u0010*\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u00102\u000c\u0010,\u001a\u0008\u0012\u0004\u0012\u00020+0\u0010\u00a2\u0006\u0004\u0008\u0012\u0010-J\r\u0010O\u001a\u00020\u001b\u00a2\u0006\u0004\u0008O\u0010PJ\r\u0010Q\u001a\u00020\u001b\u00a2\u0006\u0004\u0008Q\u0010PJ\u00b7\u0001\u0010\u0012\u001a\u00020\u001b2\u000e\u0010R\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u00102\u000e\u0010S\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u00102\u000e\u0010T\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u00102\u000e\u0010U\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u00102\u000e\u0010V\u001a\n\u0012\u0004\u0012\u00020+\u0018\u00010\u00102\u000e\u0010W\u001a\n\u0012\u0004\u0012\u00020+\u0018\u00010\u00102\u000e\u0010X\u001a\n\u0012\u0004\u0012\u00020+\u0018\u00010\u00102\u000e\u0010Y\u001a\n\u0012\u0004\u0012\u00020+\u0018\u00010\u00102\u0006\u0010Z\u001a\u00020\u001b2\u0008\u0010[\u001a\u0004\u0018\u00010&2\u0006\u0010]\u001a\u00020\\2\u0006\u0010_\u001a\u00020^2\u0006\u0010a\u001a\u00020`\u00a2\u0006\u0004\u0008\u0012\u0010bJ\u00b7\u0001\u0010\u0012\u001a\u00020\u001e2\u000e\u0008\u0002\u0010c\u001a\u0008\u0012\u0004\u0012\u00020&0\u00102\u000e\u0008\u0002\u0010d\u001a\u0008\u0012\u0004\u0012\u00020&0\u00102\u000e\u0008\u0002\u0010e\u001a\u0008\u0012\u0004\u0012\u00020&0\u00102\u000e\u0008\u0002\u0010f\u001a\u0008\u0012\u0004\u0012\u00020&0\u00102\u000e\u0008\u0002\u0010g\u001a\u0008\u0012\u0004\u0012\u00020&0\u00102\u000e\u0008\u0002\u0010h\u001a\u0008\u0012\u0004\u0012\u00020&0\u00102\u000e\u0008\u0002\u0010i\u001a\u0008\u0012\u0004\u0012\u00020&0\u00102\u000e\u0008\u0002\u0010j\u001a\u0008\u0012\u0004\u0012\u00020&0\u00102\u0006\u0010Z\u001a\u00020\u001b2\u0008\u0010[\u001a\u0004\u0018\u00010&2\u0006\u0010_\u001a\u00020^2\u0006\u0010]\u001a\u00020\\2\u0006\u0010a\u001a\u00020`\u00a2\u0006\u0004\u0008\u0012\u0010kJ-\u0010\u0012\u001a\u00020\u001b2\u0006\u0010m\u001a\u00020l2\u0006\u0010]\u001a\u00020\\2\u0006\u0010_\u001a\u00020^2\u0006\u0010a\u001a\u00020`\u00a2\u0006\u0004\u0008\u0012\u0010nJO\u0010\u0012\u001a\u00020\u001b2\u0006\u0010o\u001a\u00020\u001b2\u0006\u0010p\u001a\u00020\u001b2\u0006\u0010q\u001a\u00020\u001b2\u0006\u0010r\u001a\u00020\u001b2\u0008\u0010[\u001a\u0004\u0018\u00010&2\u0006\u0010]\u001a\u00020\\2\u0006\u0010_\u001a\u00020^2\u0006\u0010a\u001a\u00020`\u00a2\u0006\u0004\u0008\u0012\u0010sJ\r\u0010t\u001a\u00020\u001e\u00a2\u0006\u0004\u0008t\u0010#J\r\u0010u\u001a\u00020\u001b\u00a2\u0006\u0004\u0008u\u0010PJ\r\u0010v\u001a\u00020\u001b\u00a2\u0006\u0004\u0008v\u0010PJ\r\u0010w\u001a\u00020\u001b\u00a2\u0006\u0004\u0008w\u0010PJ\r\u0010x\u001a\u00020\u001b\u00a2\u0006\u0004\u0008x\u0010PR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010yR\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010zR\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008!\u0010{R\u0014\u0010\t\u001a\u00020\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008B\u0010|R\u0014\u0010\u000b\u001a\u00020\n8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008(\u0010}R\u0014\u0010\r\u001a\u00020\u000c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008>\u0010~R\u001c\u0010\u0081\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u00108\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008\u007f\u0010\u0080\u0001R$\u0010\u0084\u0001\u001a\u0008\u0012\u0004\u0012\u00020&0\u00108FX\u0086\u0084\u0002\u00a2\u0006\u000e\n\u0005\u0008O\u0010\u0082\u0001\u001a\u0005\u0008>\u0010\u0083\u0001R\u001f\u0010\u0087\u0001\u001a\u00030\u0085\u00018@X\u0080\u0084\u0002\u00a2\u0006\u000e\n\u0005\u0008u\u0010\u0082\u0001\u001a\u0005\u0008(\u0010\u0086\u0001R\u001e\u0010\u0089\u0001\u001a\u00020&8BX\u0082\u0084\u0002\u00a2\u0006\u000e\n\u0005\u0008v\u0010\u0082\u0001\u001a\u0005\u0008!\u0010\u0088\u0001R\'\u0010\u001d\u001a\u00020\u00142\u0007\u0010\u008a\u0001\u001a\u00020\u00148\u0006@BX\u0086.\u00a2\u0006\u000e\n\u0005\u0008w\u0010\u008b\u0001\u001a\u0005\u0008\u001f\u0010\u008c\u0001R\u0015\u0010\u008d\u0001\u001a\u0004\u0018\u00010&8F\u00a2\u0006\u0007\u001a\u0005\u0008\u0012\u0010\u0088\u0001R\u0015\u0010\u008e\u0001\u001a\u0004\u0018\u00010&8F\u00a2\u0006\u0007\u001a\u0005\u0008B\u0010\u0088\u0001R\u0014\u00107\u001a\u0004\u0018\u0001068F\u00a2\u0006\u0007\u001a\u0005\u0008\u007f\u0010\u008f\u0001\u00a8\u0006\u0090\u0001"
    }
    d2 = {
        "Lio/didomi/sdk/V;",
        "",
        "Landroid/content/SharedPreferences;",
        "sharedPreferences",
        "Lio/didomi/sdk/V8;",
        "vendorRepository",
        "Lio/didomi/sdk/H;",
        "configurationRepository",
        "Lio/didomi/sdk/j0;",
        "dcsRepository",
        "Lio/didomi/sdk/h3;",
        "iabStorageRepository",
        "Lio/didomi/sdk/v3;",
        "languagesHelper",
        "<init>",
        "(Landroid/content/SharedPreferences;Lio/didomi/sdk/V8;Lio/didomi/sdk/H;Lio/didomi/sdk/j0;Lio/didomi/sdk/h3;Lio/didomi/sdk/v3;)V",
        "",
        "Lio/didomi/sdk/models/InternalPurpose;",
        "a",
        "(Lio/didomi/sdk/H;Lio/didomi/sdk/V8;)Ljava/util/Set;",
        "Lio/didomi/sdk/consent/model/ConsentToken;",
        "token",
        "Ljava/util/Date;",
        "ignoreConsentBefore",
        "",
        "consentDurationInSeconds",
        "deniedConsentDurationInSeconds",
        "",
        "(Lio/didomi/sdk/consent/model/ConsentToken;Ljava/util/Date;JJ)Z",
        "consentToken",
        "",
        "b",
        "(Lio/didomi/sdk/consent/model/ConsentToken;)V",
        "c",
        "o",
        "()V",
        "existingToken",
        "(Z)V",
        "",
        "purposeID",
        "e",
        "(Ljava/lang/String;)Z",
        "purposes",
        "Lio/didomi/sdk/models/InternalVendor;",
        "vendors",
        "(Ljava/util/Set;Ljava/util/Set;)Z",
        "enabledPurposeIds",
        "disabledPurposeIds",
        "(Ljava/util/Set;Ljava/util/Set;)V",
        "(Lio/didomi/sdk/consent/model/ConsentToken;)Lio/didomi/sdk/consent/model/ConsentToken;",
        "Lkotlin/Function0;",
        "callback",
        "(Lkotlin/jvm/functions/Function0;)V",
        "m",
        "",
        "tcfVersion",
        "(ILjava/util/Date;JJ)Lio/didomi/sdk/consent/model/ConsentToken;",
        "n",
        "lastSyncDate",
        "lastSyncedUserId",
        "(Ljava/util/Date;Ljava/lang/String;)V",
        "vendorId",
        "f",
        "purposeId",
        "Lio/didomi/sdk/consent/model/ConsentStatus;",
        "(Ljava/lang/String;)Lio/didomi/sdk/consent/model/ConsentStatus;",
        "d",
        "enabledPurposes",
        "disabledPurposes",
        "enabledLegitimatePurposes",
        "disabledLegitimatePurposes",
        "enabledVendors",
        "disabledVendors",
        "enabledLegIntVendors",
        "disabledLegIntVendors",
        "(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)Z",
        "",
        "purposeSet",
        "(Ljava/util/Collection;)Ljava/util/Set;",
        "h",
        "()Z",
        "l",
        "enabledConsentPurposes",
        "disabledConsentPurposes",
        "enabledLIPurposes",
        "disabledLIPurposes",
        "enabledConsentVendors",
        "disabledConsentVendors",
        "enabledLIVendors",
        "disabledLIVendors",
        "sendAPIEvent",
        "eventAction",
        "Lio/didomi/sdk/apiEvents/b;",
        "apiEventsRepository",
        "Lio/didomi/sdk/M2;",
        "eventsRepository",
        "Lio/didomi/sdk/P8;",
        "userStatusRepository",
        "(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;ZLjava/lang/String;Lio/didomi/sdk/apiEvents/b;Lio/didomi/sdk/M2;Lio/didomi/sdk/P8;)Z",
        "previouslyEnabledPurposeIds",
        "previouslyDisabledPurposeIds",
        "previouslyEnabledLegitimatePurposeIds",
        "previouslyDisabledLegitimatePurposeIds",
        "previouslyEnabledVendorIds",
        "previouslyDisabledVendorIds",
        "previouslyEnabledLegIntVendorIds",
        "previouslyDisabledLegIntVendorIds",
        "(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;ZLjava/lang/String;Lio/didomi/sdk/M2;Lio/didomi/sdk/apiEvents/b;Lio/didomi/sdk/P8;)V",
        "Lio/didomi/sdk/O8;",
        "parameters",
        "(Lio/didomi/sdk/O8;Lio/didomi/sdk/apiEvents/b;Lio/didomi/sdk/M2;Lio/didomi/sdk/P8;)Z",
        "purposesConsentStatus",
        "purposesLIStatus",
        "vendorsConsentStatus",
        "vendorsLIStatus",
        "(ZZZZLjava/lang/String;Lio/didomi/sdk/apiEvents/b;Lio/didomi/sdk/M2;Lio/didomi/sdk/P8;)Z",
        "p",
        "i",
        "j",
        "k",
        "q",
        "Landroid/content/SharedPreferences;",
        "Lio/didomi/sdk/V8;",
        "Lio/didomi/sdk/H;",
        "Lio/didomi/sdk/j0;",
        "Lio/didomi/sdk/h3;",
        "Lio/didomi/sdk/v3;",
        "g",
        "Ljava/util/Set;",
        "requiredAndEssentialPurposes",
        "Lkotlin/Lazy;",
        "()Ljava/util/Set;",
        "requiredEssentialPurposesIds",
        "Lio/didomi/sdk/Q2;",
        "()Lio/didomi/sdk/Q2;",
        "googleRepository",
        "()Ljava/lang/String;",
        "consentTokenKey",
        "<set-?>",
        "Lio/didomi/sdk/consent/model/ConsentToken;",
        "()Lio/didomi/sdk/consent/model/ConsentToken;",
        "consentString",
        "googleAdditionalConsent",
        "()Ljava/lang/Integer;",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# static fields
.field public static final l:Lio/didomi/sdk/V$a;


# instance fields
.field private final a:Landroid/content/SharedPreferences;

.field private final b:Lio/didomi/sdk/V8;

.field private final c:Lio/didomi/sdk/H;

.field private final d:Lio/didomi/sdk/j0;

.field private final e:Lio/didomi/sdk/h3;

.field private final f:Lio/didomi/sdk/v3;

.field private final g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/didomi/sdk/models/InternalPurpose;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lkotlin/i;

.field private final i:Lkotlin/i;

.field private final j:Lkotlin/i;

.field private k:Lio/didomi/sdk/consent/model/ConsentToken;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lio/didomi/sdk/V$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/didomi/sdk/V$a;-><init>(Lkotlin/jvm/internal/n;)V

    sput-object v0, Lio/didomi/sdk/V;->l:Lio/didomi/sdk/V$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/SharedPreferences;Lio/didomi/sdk/V8;Lio/didomi/sdk/H;Lio/didomi/sdk/j0;Lio/didomi/sdk/h3;Lio/didomi/sdk/v3;)V
    .registers 14

    const-string v0, "sharedPreferences"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "vendorRepository"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configurationRepository"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dcsRepository"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iabStorageRepository"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "languagesHelper"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/V;->a:Landroid/content/SharedPreferences;

    iput-object p2, p0, Lio/didomi/sdk/V;->b:Lio/didomi/sdk/V8;

    iput-object p3, p0, Lio/didomi/sdk/V;->c:Lio/didomi/sdk/H;

    iput-object p4, p0, Lio/didomi/sdk/V;->d:Lio/didomi/sdk/j0;

    iput-object p5, p0, Lio/didomi/sdk/V;->e:Lio/didomi/sdk/h3;

    iput-object p6, p0, Lio/didomi/sdk/V;->f:Lio/didomi/sdk/v3;

    invoke-direct {p0, p3, p2}, Lio/didomi/sdk/V;->a(Lio/didomi/sdk/H;Lio/didomi/sdk/V8;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/sdk/V;->g:Ljava/util/Set;

    new-instance p1, Lio/didomi/sdk/V$e;

    invoke-direct {p1, p0}, Lio/didomi/sdk/V$e;-><init>(Lio/didomi/sdk/V;)V

    invoke-static {p1}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/sdk/V;->h:Lkotlin/i;

    new-instance p1, Lio/didomi/sdk/V$d;

    invoke-direct {p1, p0}, Lio/didomi/sdk/V$d;-><init>(Lio/didomi/sdk/V;)V

    invoke-static {p1}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/sdk/V;->i:Lkotlin/i;

    new-instance p1, Lio/didomi/sdk/V$c;

    invoke-direct {p1, p0}, Lio/didomi/sdk/V$c;-><init>(Lio/didomi/sdk/V;)V

    invoke-static {p1}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/sdk/V;->j:Lkotlin/i;

    :try_start_54
    invoke-virtual {p3}, Lio/didomi/sdk/H;->b()Lio/didomi/sdk/k;

    move-result-object p1

    invoke-interface {p5}, Lio/didomi/sdk/h3;->getVersion()I

    move-result v1

    invoke-virtual {p1}, Lio/didomi/sdk/k;->l()Lio/didomi/sdk/k$k;

    move-result-object p2

    invoke-static {p2}, Lio/didomi/sdk/l;->a(Lio/didomi/sdk/k$k;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {p1}, Lio/didomi/sdk/k;->a()Lio/didomi/sdk/k$a;

    move-result-object p2

    invoke-static {p2}, Lio/didomi/sdk/l;->a(Lio/didomi/sdk/k$a;)J

    move-result-wide v3

    invoke-virtual {p1}, Lio/didomi/sdk/k;->a()Lio/didomi/sdk/k$a;

    move-result-object p1

    invoke-static {p1}, Lio/didomi/sdk/l;->c(Lio/didomi/sdk/k$a;)J

    move-result-wide v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lio/didomi/sdk/V;->a(ILjava/util/Date;JJ)Lio/didomi/sdk/consent/model/ConsentToken;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/sdk/V;->k:Lio/didomi/sdk/consent/model/ConsentToken;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lio/didomi/sdk/V;->a(Z)V
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_7f} :catch_80

    goto :goto_87

    :catch_80
    invoke-virtual {p0}, Lio/didomi/sdk/V;->m()V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lio/didomi/sdk/V;->a(Z)V

    :goto_87
    return-void
.end method

.method public static final synthetic a(Lio/didomi/sdk/V;)Lio/didomi/sdk/H;
    .registers 1

    iget-object p0, p0, Lio/didomi/sdk/V;->c:Lio/didomi/sdk/H;

    return-object p0
.end method

.method private final a(Lio/didomi/sdk/consent/model/ConsentToken;)Lio/didomi/sdk/consent/model/ConsentToken;
    .registers 14

    iget-object v0, p0, Lio/didomi/sdk/V;->b:Lio/didomi/sdk/V8;

    invoke-virtual {v0}, Lio/didomi/sdk/V8;->n()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lio/didomi/sdk/V;->b:Lio/didomi/sdk/V8;

    invoke-virtual {v1}, Lio/didomi/sdk/V8;->t()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p1}, Lio/didomi/sdk/consent/model/ConsentToken;->getDisabledLegitimatePurposes()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/p;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/collections/p;->subtract(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v6

    invoke-virtual {p1}, Lio/didomi/sdk/consent/model/ConsentToken;->getDisabledLegitimateVendors()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/p;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v1, v0}, Lkotlin/collections/p;->subtract(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v10

    invoke-static {p1}, Lio/didomi/sdk/Y;->a(Lio/didomi/sdk/consent/model/ConsentToken;)Lio/didomi/sdk/consent/model/ConsentToken;

    move-result-object v0

    invoke-virtual {p1}, Lio/didomi/sdk/consent/model/ConsentToken;->getEnabledPurposes()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/p;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v4

    invoke-virtual {p1}, Lio/didomi/sdk/consent/model/ConsentToken;->getDisabledPurposes()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/p;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v5

    invoke-virtual {p1}, Lio/didomi/sdk/consent/model/ConsentToken;->getDisabledLegitimatePurposes()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/p;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v7

    invoke-virtual {p1}, Lio/didomi/sdk/consent/model/ConsentToken;->getEnabledVendors()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/p;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v8

    invoke-virtual {p1}, Lio/didomi/sdk/consent/model/ConsentToken;->getDisabledVendors()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/p;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v9

    invoke-virtual {p1}, Lio/didomi/sdk/consent/model/ConsentToken;->getDisabledLegitimateVendors()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/p;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v11

    move-object v3, v0

    invoke-static/range {v3 .. v11}, Lio/didomi/sdk/Y;->a(Lio/didomi/sdk/consent/model/ConsentToken;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)Z

    return-object v0
.end method

.method private final a(Lio/didomi/sdk/H;Lio/didomi/sdk/V8;)Ljava/util/Set;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/didomi/sdk/H;",
            "Lio/didomi/sdk/V8;",
            ")",
            "Ljava/util/Set<",
            "Lio/didomi/sdk/models/InternalPurpose;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lio/didomi/sdk/H;->b()Lio/didomi/sdk/k;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/k;->a()Lio/didomi/sdk/k$a;

    move-result-object v0

    invoke-static {v0}, Lio/didomi/sdk/l;->d(Lio/didomi/sdk/k$a;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/p;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-static {}, Lkotlin/collections/h0;->emptySet()Ljava/util/Set;

    move-result-object p1

    return-object p1

    :cond_1b
    invoke-virtual {p1}, Lio/didomi/sdk/H;->b()Lio/didomi/sdk/k;

    move-result-object p1

    invoke-virtual {p1}, Lio/didomi/sdk/k;->a()Lio/didomi/sdk/k$a;

    move-result-object p1

    invoke-virtual {p1}, Lio/didomi/sdk/k$a;->c()Ljava/util/List;

    move-result-object p1

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Lkotlin/collections/p;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_36
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/didomi/sdk/CustomPurpose;

    invoke-virtual {v2}, Lio/didomi/sdk/CustomPurpose;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_36

    :cond_4a
    invoke-virtual {p2}, Lio/didomi/sdk/V8;->k()Ljava/util/Set;

    move-result-object p1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_57
    :goto_57
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lio/didomi/sdk/models/InternalPurpose;

    invoke-virtual {v4}, Lio/didomi/sdk/models/InternalPurpose;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_57

    invoke-virtual {v4}, Lio/didomi/sdk/models/InternalPurpose;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_57

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_57

    :cond_7c
    invoke-static {v2}, Lkotlin/collections/p;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p2, p1}, Lio/didomi/sdk/V8;->c(Ljava/util/Set;)V

    return-object p1
.end method

.method public static synthetic a(Lio/didomi/sdk/V;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;ZLjava/lang/String;Lio/didomi/sdk/M2;Lio/didomi/sdk/apiEvents/b;Lio/didomi/sdk/P8;ILjava/lang/Object;)V
    .registers 32

    move/from16 v0, p14

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_c

    invoke-static {}, Lkotlin/collections/h0;->emptySet()Ljava/util/Set;

    move-result-object v1

    move-object v3, v1

    goto :goto_e

    :cond_c
    move-object/from16 v3, p1

    :goto_e
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_18

    invoke-static {}, Lkotlin/collections/h0;->emptySet()Ljava/util/Set;

    move-result-object v1

    move-object v4, v1

    goto :goto_1a

    :cond_18
    move-object/from16 v4, p2

    :goto_1a
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_24

    invoke-static {}, Lkotlin/collections/h0;->emptySet()Ljava/util/Set;

    move-result-object v1

    move-object v5, v1

    goto :goto_26

    :cond_24
    move-object/from16 v5, p3

    :goto_26
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_30

    invoke-static {}, Lkotlin/collections/h0;->emptySet()Ljava/util/Set;

    move-result-object v1

    move-object v6, v1

    goto :goto_32

    :cond_30
    move-object/from16 v6, p4

    :goto_32
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_3c

    invoke-static {}, Lkotlin/collections/h0;->emptySet()Ljava/util/Set;

    move-result-object v1

    move-object v7, v1

    goto :goto_3e

    :cond_3c
    move-object/from16 v7, p5

    :goto_3e
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_48

    invoke-static {}, Lkotlin/collections/h0;->emptySet()Ljava/util/Set;

    move-result-object v1

    move-object v8, v1

    goto :goto_4a

    :cond_48
    move-object/from16 v8, p6

    :goto_4a
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_54

    invoke-static {}, Lkotlin/collections/h0;->emptySet()Ljava/util/Set;

    move-result-object v1

    move-object v9, v1

    goto :goto_56

    :cond_54
    move-object/from16 v9, p7

    :goto_56
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_60

    invoke-static {}, Lkotlin/collections/h0;->emptySet()Ljava/util/Set;

    move-result-object v0

    move-object v10, v0

    goto :goto_62

    :cond_60
    move-object/from16 v10, p8

    :goto_62
    move-object/from16 v2, p0

    move/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    move-object/from16 v15, p13

    invoke-virtual/range {v2 .. v15}, Lio/didomi/sdk/V;->a(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;ZLjava/lang/String;Lio/didomi/sdk/M2;Lio/didomi/sdk/apiEvents/b;Lio/didomi/sdk/P8;)V

    return-void
.end method

.method private final a(Z)V
    .registers 5

    iget-object v0, p0, Lio/didomi/sdk/V;->c:Lio/didomi/sdk/H;

    invoke-static {v0}, Lio/didomi/sdk/I;->k(Lio/didomi/sdk/H;)Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lio/didomi/sdk/V;->a:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    const-string v2, "Didomi_IAB_Timestamp_granularity_days"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_2b

    :cond_14
    if-eqz p1, :cond_1d

    invoke-virtual {p0}, Lio/didomi/sdk/V;->b()Lio/didomi/sdk/consent/model/ConsentToken;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/didomi/sdk/V;->c(Lio/didomi/sdk/consent/model/ConsentToken;)V

    :cond_1d
    iget-object p1, p0, Lio/didomi/sdk/V;->a:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_2b
    :goto_2b
    return-void
.end method

.method private final a(Lio/didomi/sdk/consent/model/ConsentToken;Ljava/util/Date;JJ)Z
    .registers 12

    const/4 v0, 0x1

    if-eqz p2, :cond_e

    invoke-virtual {p1}, Lio/didomi/sdk/consent/model/ConsentToken;->getUpdated()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result p2

    if-eqz p2, :cond_e

    return v0

    :cond_e
    sget-object p2, Lio/didomi/sdk/v0;->a:Lio/didomi/sdk/v0;

    invoke-virtual {p2}, Lio/didomi/sdk/v0;->b()J

    move-result-wide v1

    invoke-virtual {p1}, Lio/didomi/sdk/consent/model/ConsentToken;->getUpdated()Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const/16 p2, 0x3e8

    int-to-long v3, p2

    div-long/2addr v1, v3

    cmp-long p2, v1, p3

    if-lez p2, :cond_26

    return v0

    :cond_26
    const-wide/16 p2, 0x1

    cmp-long p4, p2, p5

    if-gtz p4, :cond_37

    cmp-long p2, p5, v1

    if-gez p2, :cond_37

    invoke-static {p1}, Lio/didomi/sdk/Y;->l(Lio/didomi/sdk/consent/model/ConsentToken;)Z

    move-result p1

    if-eqz p1, :cond_37

    goto :goto_38

    :cond_37
    const/4 v0, 0x0

    :goto_38
    return v0
.end method

.method public static final synthetic b(Lio/didomi/sdk/V;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Lio/didomi/sdk/V;->c()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final b(Lio/didomi/sdk/consent/model/ConsentToken;)V
    .registers 4

    :try_start_0
    invoke-static {p1}, Lio/didomi/sdk/X;->a(Lio/didomi/sdk/consent/model/ConsentToken;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "consentToken.toJSON().toString()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/didomi/sdk/V;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-direct {p0}, Lio/didomi/sdk/V;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_1f

    goto :goto_25

    :catch_1f
    move-exception p1

    const-string v0, "Unable to save the Didomi token to shared preferences"

    invoke-static {v0, p1}, Lio/didomi/sdk/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_25
    return-void
.end method

.method private final b(Ljava/util/Set;Ljava/util/Set;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lio/didomi/sdk/models/InternalPurpose;",
            ">;",
            "Ljava/util/Set<",
            "Lio/didomi/sdk/models/InternalVendor;",
            ">;)Z"
        }
    .end annotation

    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_b

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_28

    :cond_b
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/didomi/sdk/models/InternalPurpose;

    invoke-virtual {v0}, Lio/didomi/sdk/models/InternalPurpose;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/didomi/sdk/V;->c(Ljava/lang/String;)Lio/didomi/sdk/consent/model/ConsentStatus;

    move-result-object v0

    sget-object v1, Lio/didomi/sdk/consent/model/ConsentStatus;->UNKNOWN:Lio/didomi/sdk/consent/model/ConsentStatus;

    if-ne v0, v1, :cond_f

    goto :goto_4f

    :cond_28
    :goto_28
    instance-of p1, p2, Ljava/util/Collection;

    if-eqz p1, :cond_33

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_33

    goto :goto_51

    :cond_33
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_37
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_51

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/didomi/sdk/models/InternalVendor;

    invoke-virtual {p0}, Lio/didomi/sdk/V;->b()Lio/didomi/sdk/consent/model/ConsentToken;

    move-result-object v0

    invoke-static {v0, p2}, Lio/didomi/sdk/Y;->b(Lio/didomi/sdk/consent/model/ConsentToken;Lio/didomi/sdk/models/InternalVendor;)Lio/didomi/sdk/consent/model/ConsentStatus;

    move-result-object p2

    sget-object v0, Lio/didomi/sdk/consent/model/ConsentStatus;->UNKNOWN:Lio/didomi/sdk/consent/model/ConsentStatus;

    if-ne p2, v0, :cond_37

    :goto_4f
    const/4 p1, 0x0

    goto :goto_52

    :cond_51
    :goto_51
    const/4 p1, 0x1

    :goto_52
    return p1
.end method

.method private final c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/V;->j:Lkotlin/i;

    invoke-interface {v0}, Lkotlin/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic c(Lio/didomi/sdk/V;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Lio/didomi/sdk/V;->g:Ljava/util/Set;

    return-object p0
.end method

.method private final c(Lio/didomi/sdk/consent/model/ConsentToken;)V
    .registers 9

    :try_start_0
    iget-object v0, p0, Lio/didomi/sdk/V;->e:Lio/didomi/sdk/h3;

    iget-object v1, p0, Lio/didomi/sdk/V;->a:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lio/didomi/sdk/V;->c:Lio/didomi/sdk/H;

    invoke-virtual {v2}, Lio/didomi/sdk/H;->b()Lio/didomi/sdk/k;

    move-result-object v3

    iget-object v2, p0, Lio/didomi/sdk/V;->c:Lio/didomi/sdk/H;

    invoke-virtual {v2}, Lio/didomi/sdk/H;->d()Lio/didomi/sdk/d3;

    move-result-object v4

    iget-object v2, p0, Lio/didomi/sdk/V;->b:Lio/didomi/sdk/V8;

    invoke-virtual {v2}, Lio/didomi/sdk/V8;->d()Ljava/util/List;

    move-result-object v5

    iget-object v2, p0, Lio/didomi/sdk/V;->f:Lio/didomi/sdk/v3;

    invoke-virtual {v2}, Lio/didomi/sdk/v3;->e()Ljava/lang/String;

    move-result-object v6

    move-object v2, p1

    invoke-interface/range {v0 .. v6}, Lio/didomi/sdk/h3;->a(Landroid/content/SharedPreferences;Lio/didomi/sdk/consent/model/ConsentToken;Lio/didomi/sdk/k;Lio/didomi/sdk/d3;Ljava/util/List;Ljava/lang/String;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_20} :catch_21

    goto :goto_27

    :catch_21
    move-exception p1

    const-string v0, "Unable to store TCF consent information to device"

    invoke-static {v0, p1}, Lio/didomi/sdk/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_27
    return-void
.end method

.method private final c(Ljava/util/Set;Ljava/util/Set;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    if-eqz p1, :cond_2b

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_15
    :goto_15
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3}, Lio/didomi/sdk/V;->e(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_2b
    if-eqz p2, :cond_47

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_31
    :goto_31
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_47

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p2}, Lio/didomi/sdk/V;->e(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-virtual {v1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_31

    :cond_47
    invoke-virtual {v2, v0}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v2, v1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_51
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_74

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot set consent status for essential purpose "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p2, v1, v0, v1}, Lio/didomi/sdk/Log;->e$default(Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    goto :goto_51

    :cond_74
    return-void
.end method

.method public static final synthetic d(Lio/didomi/sdk/V;)Landroid/content/SharedPreferences;
    .registers 1

    iget-object p0, p0, Lio/didomi/sdk/V;->a:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method public static final synthetic e(Lio/didomi/sdk/V;)Lio/didomi/sdk/V8;
    .registers 1

    iget-object p0, p0, Lio/didomi/sdk/V;->b:Lio/didomi/sdk/V8;

    return-object p0
.end method

.method private final e(Ljava/lang/String;)Z
    .registers 3

    invoke-virtual {p0}, Lio/didomi/sdk/V;->f()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private final o()V
    .registers 3

    :try_start_0
    invoke-virtual {p0}, Lio/didomi/sdk/V;->e()Lio/didomi/sdk/Q2;

    move-result-object v0

    iget-object v1, p0, Lio/didomi/sdk/V;->a:Landroid/content/SharedPreferences;

    invoke-virtual {v0, v1, p0}, Lio/didomi/sdk/Q2;->a(Landroid/content/SharedPreferences;Lio/didomi/sdk/V;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_10

    :catch_a
    move-exception v0

    const-string v1, "Unable to store Google additional consent information to device"

    invoke-static {v1, v0}, Lio/didomi/sdk/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_10
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lio/didomi/sdk/consent/model/ConsentStatus;
    .registers 3

    const-string v0, "purposeId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lio/didomi/sdk/V;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    sget-object p1, Lio/didomi/sdk/consent/model/ConsentStatus;->ENABLE:Lio/didomi/sdk/consent/model/ConsentStatus;

    return-object p1

    :cond_e
    invoke-virtual {p0}, Lio/didomi/sdk/V;->b()Lio/didomi/sdk/consent/model/ConsentToken;

    move-result-object v0

    invoke-static {v0, p1}, Lio/didomi/sdk/Y;->b(Lio/didomi/sdk/consent/model/ConsentToken;Ljava/lang/String;)Lio/didomi/sdk/consent/model/ConsentStatus;

    move-result-object p1

    return-object p1
.end method

.method public final a(ILjava/util/Date;JJ)Lio/didomi/sdk/consent/model/ConsentToken;
    .registers 15

    iget-object v0, p0, Lio/didomi/sdk/V;->a:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Lio/didomi/sdk/V;->c()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_b
    sget-object v1, Lio/didomi/sdk/W;->a:Lio/didomi/sdk/W;

    iget-object v2, p0, Lio/didomi/sdk/V;->b:Lio/didomi/sdk/V8;

    invoke-virtual {v1, v0, v2}, Lio/didomi/sdk/W;->a(Ljava/lang/String;Lio/didomi/sdk/V8;)Lio/didomi/sdk/consent/model/ConsentToken;

    move-result-object v7
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_13} :catch_35

    invoke-virtual {v7}, Lio/didomi/sdk/consent/model/ConsentToken;->getTcfVersion()I

    move-result v0

    if-ne v0, p1, :cond_2d

    move-object v0, p0

    move-object v1, v7

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    invoke-direct/range {v0 .. v6}, Lio/didomi/sdk/V;->a(Lio/didomi/sdk/consent/model/ConsentToken;Ljava/util/Date;JJ)Z

    move-result v0

    if-nez v0, :cond_25

    return-object v7

    :cond_25
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Consent from shared preferences is older than allowed by configuration"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2d
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Invalid TCF version from token"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_35
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Could not load the Didomi token from shared preferences"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/V;->e:Lio/didomi/sdk/h3;

    iget-object v1, p0, Lio/didomi/sdk/V;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0, v1}, Lio/didomi/sdk/h3;->a(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/util/Collection;)Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lio/didomi/sdk/models/InternalPurpose;",
            ">;)",
            "Ljava/util/Set<",
            "Lio/didomi/sdk/models/InternalPurpose;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_2c

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_b
    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lio/didomi/sdk/models/InternalPurpose;

    invoke-virtual {v2}, Lio/didomi/sdk/models/InternalPurpose;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lio/didomi/sdk/V;->e(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_26
    invoke-static {v0}, Lkotlin/collections/p;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    if-nez p1, :cond_30

    :cond_2c
    invoke-static {}, Lkotlin/collections/h0;->emptySet()Ljava/util/Set;

    move-result-object p1

    :cond_30
    return-object p1
.end method

.method public final a(Ljava/util/Date;Ljava/lang/String;)V
    .registers 4

    invoke-virtual {p0}, Lio/didomi/sdk/V;->b()Lio/didomi/sdk/consent/model/ConsentToken;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/didomi/sdk/consent/model/ConsentToken;->setLastSyncDate(Ljava/util/Date;)V

    invoke-virtual {p0}, Lio/didomi/sdk/V;->b()Lio/didomi/sdk/consent/model/ConsentToken;

    move-result-object p1

    invoke-virtual {p1, p2}, Lio/didomi/sdk/consent/model/ConsentToken;->setLastSyncedUserId(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;ZLjava/lang/String;Lio/didomi/sdk/M2;Lio/didomi/sdk/apiEvents/b;Lio/didomi/sdk/P8;)V
    .registers 35
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            "Lio/didomi/sdk/M2;",
            "Lio/didomi/sdk/apiEvents/b;",
            "Lio/didomi/sdk/P8;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p11

    const-string v2, "previouslyEnabledPurposeIds"

    move-object/from16 v12, p1

    invoke-static {v12, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "previouslyDisabledPurposeIds"

    move-object/from16 v13, p2

    invoke-static {v13, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "previouslyEnabledLegitimatePurposeIds"

    move-object/from16 v14, p3

    invoke-static {v14, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "previouslyDisabledLegitimatePurposeIds"

    move-object/from16 v15, p4

    invoke-static {v15, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "previouslyEnabledVendorIds"

    move-object/from16 v3, p5

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "previouslyDisabledVendorIds"

    move-object/from16 v11, p6

    invoke-static {v11, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "previouslyEnabledLegIntVendorIds"

    move-object/from16 v10, p7

    invoke-static {v10, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "previouslyDisabledLegIntVendorIds"

    move-object/from16 v9, p8

    invoke-static {v9, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "eventsRepository"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "apiEventsRepository"

    move-object/from16 v8, p12

    invoke-static {v8, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "userStatusRepository"

    move-object/from16 v4, p13

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lio/didomi/sdk/events/ConsentChangedEvent;

    invoke-direct {v2}, Lio/didomi/sdk/events/ConsentChangedEvent;-><init>()V

    invoke-virtual {v1, v2}, Lio/didomi/sdk/M2;->c(Lio/didomi/sdk/events/Event;)V

    invoke-virtual/range {p13 .. p13}, Lio/didomi/sdk/P8;->b()Lio/didomi/sdk/models/CurrentUserStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/didomi/sdk/M2;->a(Lio/didomi/sdk/models/CurrentUserStatus;)V

    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/V;->b()Lio/didomi/sdk/consent/model/ConsentToken;

    move-result-object v1

    invoke-virtual {v1}, Lio/didomi/sdk/consent/model/ConsentToken;->getEnabledPurposes()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/didomi/sdk/V;->a(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/V;->b()Lio/didomi/sdk/consent/model/ConsentToken;

    move-result-object v2

    invoke-virtual {v2}, Lio/didomi/sdk/consent/model/ConsentToken;->getDisabledPurposes()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/didomi/sdk/V;->a(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/V;->b()Lio/didomi/sdk/consent/model/ConsentToken;

    move-result-object v4

    invoke-virtual {v4}, Lio/didomi/sdk/consent/model/ConsentToken;->getEnabledLegitimatePurposes()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-virtual {v0, v4}, Lio/didomi/sdk/V;->a(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/V;->b()Lio/didomi/sdk/consent/model/ConsentToken;

    move-result-object v4

    invoke-virtual {v4}, Lio/didomi/sdk/consent/model/ConsentToken;->getDisabledLegitimatePurposes()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-virtual {v0, v4}, Lio/didomi/sdk/V;->a(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v7

    if-eqz p9, :cond_ed

    if-eqz p10, :cond_ed

    invoke-static {v1}, Lio/didomi/sdk/p3;->a(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v4

    invoke-static {v2}, Lio/didomi/sdk/p3;->a(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v5

    invoke-static {v6}, Lio/didomi/sdk/p3;->a(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v6

    invoke-static {v7}, Lio/didomi/sdk/p3;->a(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/V;->b()Lio/didomi/sdk/consent/model/ConsentToken;

    move-result-object v1

    invoke-static {v1}, Lio/didomi/sdk/Y;->i(Lio/didomi/sdk/consent/model/ConsentToken;)Ljava/util/Set;

    move-result-object v1

    move-object v8, v1

    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/V;->b()Lio/didomi/sdk/consent/model/ConsentToken;

    move-result-object v1

    invoke-static {v1}, Lio/didomi/sdk/Y;->e(Lio/didomi/sdk/consent/model/ConsentToken;)Ljava/util/Set;

    move-result-object v1

    move-object v9, v1

    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/V;->b()Lio/didomi/sdk/consent/model/ConsentToken;

    move-result-object v1

    invoke-static {v1}, Lio/didomi/sdk/Y;->g(Lio/didomi/sdk/consent/model/ConsentToken;)Ljava/util/Set;

    move-result-object v1

    move-object v10, v1

    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/V;->b()Lio/didomi/sdk/consent/model/ConsentToken;

    move-result-object v1

    invoke-static {v1}, Lio/didomi/sdk/Y;->c(Lio/didomi/sdk/consent/model/ConsentToken;)Ljava/util/Set;

    move-result-object v1

    move-object v11, v1

    move-object/from16 v3, p12

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    move-object/from16 v15, p4

    move-object/from16 v16, p5

    move-object/from16 v17, p6

    move-object/from16 v18, p7

    move-object/from16 v19, p8

    move-object/from16 v20, p10

    invoke-virtual/range {v3 .. v20}, Lio/didomi/sdk/apiEvents/b;->a(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;)V

    :cond_ed
    return-void
.end method

.method public final a(Lkotlin/jvm/b/a;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/b/a<",
            "Lkotlin/v;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lio/didomi/sdk/V$b;

    invoke-direct {v0, p0, p1}, Lio/didomi/sdk/V$b;-><init>(Lio/didomi/sdk/V;Lkotlin/jvm/b/a;)V

    iget-object p1, p0, Lio/didomi/sdk/V;->a:Landroid/content/SharedPreferences;

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public final a(Lio/didomi/sdk/O8;Lio/didomi/sdk/apiEvents/b;Lio/didomi/sdk/M2;Lio/didomi/sdk/P8;)Z
    .registers 21

    move-object/from16 v14, p0

    const-string v0, "parameters"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "apiEventsRepository"

    move-object/from16 v11, p2

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventsRepository"

    move-object/from16 v12, p3

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userStatusRepository"

    move-object/from16 v13, p4

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lio/didomi/sdk/O8;->e()Ljava/util/Set;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lio/didomi/sdk/O8;->a()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v14, v0, v2}, Lio/didomi/sdk/V;->c(Ljava/util/Set;Ljava/util/Set;)V

    iget-object v0, v14, Lio/didomi/sdk/V;->b:Lio/didomi/sdk/V8;

    invoke-virtual/range {p1 .. p1}, Lio/didomi/sdk/O8;->e()Ljava/util/Set;

    move-result-object v2

    if-nez v2, :cond_35

    invoke-static {}, Lkotlin/collections/h0;->emptySet()Ljava/util/Set;

    move-result-object v2

    :cond_35
    invoke-virtual {v0, v2}, Lio/didomi/sdk/V8;->a(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    iget-object v0, v14, Lio/didomi/sdk/V;->b:Lio/didomi/sdk/V8;

    invoke-virtual/range {p1 .. p1}, Lio/didomi/sdk/O8;->a()Ljava/util/Set;

    move-result-object v3

    if-nez v3, :cond_45

    invoke-static {}, Lkotlin/collections/h0;->emptySet()Ljava/util/Set;

    move-result-object v3

    :cond_45
    invoke-virtual {v0, v3}, Lio/didomi/sdk/V8;->a(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    iget-object v0, v14, Lio/didomi/sdk/V;->b:Lio/didomi/sdk/V8;

    invoke-virtual/range {p1 .. p1}, Lio/didomi/sdk/O8;->g()Ljava/util/Set;

    move-result-object v4

    if-nez v4, :cond_55

    invoke-static {}, Lkotlin/collections/h0;->emptySet()Ljava/util/Set;

    move-result-object v4

    :cond_55
    invoke-virtual {v0, v4}, Lio/didomi/sdk/V8;->a(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v4

    iget-object v0, v14, Lio/didomi/sdk/V;->b:Lio/didomi/sdk/V8;

    invoke-virtual/range {p1 .. p1}, Lio/didomi/sdk/O8;->c()Ljava/util/Set;

    move-result-object v5

    if-nez v5, :cond_65

    invoke-static {}, Lkotlin/collections/h0;->emptySet()Ljava/util/Set;

    move-result-object v5

    :cond_65
    invoke-virtual {v0, v5}, Lio/didomi/sdk/V8;->a(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v5

    iget-object v0, v14, Lio/didomi/sdk/V;->b:Lio/didomi/sdk/V8;

    invoke-virtual/range {p1 .. p1}, Lio/didomi/sdk/O8;->f()Ljava/util/Set;

    move-result-object v6

    if-nez v6, :cond_75

    invoke-static {}, Lkotlin/collections/h0;->emptySet()Ljava/util/Set;

    move-result-object v6

    :cond_75
    invoke-virtual {v0, v6}, Lio/didomi/sdk/V8;->b(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v6

    iget-object v0, v14, Lio/didomi/sdk/V;->b:Lio/didomi/sdk/V8;

    invoke-virtual/range {p1 .. p1}, Lio/didomi/sdk/O8;->b()Ljava/util/Set;

    move-result-object v7

    if-nez v7, :cond_85

    invoke-static {}, Lkotlin/collections/h0;->emptySet()Ljava/util/Set;

    move-result-object v7

    :cond_85
    invoke-virtual {v0, v7}, Lio/didomi/sdk/V8;->b(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v7

    iget-object v0, v14, Lio/didomi/sdk/V;->b:Lio/didomi/sdk/V8;

    invoke-virtual/range {p1 .. p1}, Lio/didomi/sdk/O8;->h()Ljava/util/Set;

    move-result-object v8

    if-nez v8, :cond_95

    invoke-static {}, Lkotlin/collections/h0;->emptySet()Ljava/util/Set;

    move-result-object v8

    :cond_95
    invoke-virtual {v0, v8}, Lio/didomi/sdk/V8;->b(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v8

    iget-object v0, v14, Lio/didomi/sdk/V;->b:Lio/didomi/sdk/V8;

    invoke-virtual/range {p1 .. p1}, Lio/didomi/sdk/O8;->d()Ljava/util/Set;

    move-result-object v9

    if-nez v9, :cond_a5

    invoke-static {}, Lkotlin/collections/h0;->emptySet()Ljava/util/Set;

    move-result-object v9

    :cond_a5
    invoke-virtual {v0, v9}, Lio/didomi/sdk/V8;->b(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lio/didomi/sdk/O8;->j()Z

    move-result v10

    invoke-virtual/range {p1 .. p1}, Lio/didomi/sdk/O8;->i()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move v9, v10

    move-object v10, v15

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    invoke-virtual/range {v0 .. v13}, Lio/didomi/sdk/V;->a(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;ZLjava/lang/String;Lio/didomi/sdk/apiEvents/b;Lio/didomi/sdk/M2;Lio/didomi/sdk/P8;)Z

    move-result v0

    return v0
.end method

.method public final a(Ljava/util/Set;Ljava/util/Set;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lio/didomi/sdk/models/InternalPurpose;",
            ">;",
            "Ljava/util/Set<",
            "Lio/didomi/sdk/models/InternalVendor;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "purposes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "vendors"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_15

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_32

    :cond_15
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_19
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/didomi/sdk/models/InternalPurpose;

    invoke-virtual {v0}, Lio/didomi/sdk/models/InternalPurpose;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/didomi/sdk/V;->a(Ljava/lang/String;)Lio/didomi/sdk/consent/model/ConsentStatus;

    move-result-object v0

    sget-object v1, Lio/didomi/sdk/consent/model/ConsentStatus;->UNKNOWN:Lio/didomi/sdk/consent/model/ConsentStatus;

    if-ne v0, v1, :cond_19

    goto :goto_59

    :cond_32
    :goto_32
    instance-of p1, p2, Ljava/util/Collection;

    if-eqz p1, :cond_3d

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3d

    goto :goto_5b

    :cond_3d
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_41
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/didomi/sdk/models/InternalVendor;

    invoke-virtual {p0}, Lio/didomi/sdk/V;->b()Lio/didomi/sdk/consent/model/ConsentToken;

    move-result-object v0

    invoke-static {v0, p2}, Lio/didomi/sdk/Y;->a(Lio/didomi/sdk/consent/model/ConsentToken;Lio/didomi/sdk/models/InternalVendor;)Lio/didomi/sdk/consent/model/ConsentStatus;

    move-result-object p2

    sget-object v0, Lio/didomi/sdk/consent/model/ConsentStatus;->UNKNOWN:Lio/didomi/sdk/consent/model/ConsentStatus;

    if-ne p2, v0, :cond_41

    :goto_59
    const/4 p1, 0x0

    goto :goto_5c

    :cond_5b
    :goto_5b
    const/4 p1, 0x1

    :goto_5c
    return p1
.end method

.method public final a(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)Z
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lio/didomi/sdk/models/InternalPurpose;",
            ">;",
            "Ljava/util/Set<",
            "Lio/didomi/sdk/models/InternalPurpose;",
            ">;",
            "Ljava/util/Set<",
            "Lio/didomi/sdk/models/InternalPurpose;",
            ">;",
            "Ljava/util/Set<",
            "Lio/didomi/sdk/models/InternalPurpose;",
            ">;",
            "Ljava/util/Set<",
            "Lio/didomi/sdk/models/InternalVendor;",
            ">;",
            "Ljava/util/Set<",
            "Lio/didomi/sdk/models/InternalVendor;",
            ">;",
            "Ljava/util/Set<",
            "Lio/didomi/sdk/models/InternalVendor;",
            ">;",
            "Ljava/util/Set<",
            "Lio/didomi/sdk/models/InternalVendor;",
            ">;)Z"
        }
    .end annotation

    move-object v0, p0

    invoke-virtual {p0, p1}, Lio/didomi/sdk/V;->a(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v2

    move-object v1, p2

    invoke-virtual {p0, p2}, Lio/didomi/sdk/V;->a(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v3

    move-object v1, p3

    invoke-virtual {p0, p3}, Lio/didomi/sdk/V;->a(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v4

    move-object v1, p4

    invoke-virtual {p0, p4}, Lio/didomi/sdk/V;->a(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v5

    invoke-virtual {p0}, Lio/didomi/sdk/V;->b()Lio/didomi/sdk/consent/model/ConsentToken;

    move-result-object v1

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-static/range {v1 .. v9}, Lio/didomi/sdk/Y;->a(Lio/didomi/sdk/consent/model/ConsentToken;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-virtual {p0}, Lio/didomi/sdk/V;->b()Lio/didomi/sdk/consent/model/ConsentToken;

    move-result-object v2

    sget-object v3, Lio/didomi/sdk/v0;->a:Lio/didomi/sdk/v0;

    invoke-virtual {v3}, Lio/didomi/sdk/v0;->a()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/didomi/sdk/consent/model/ConsentToken;->setUpdated(Ljava/util/Date;)V

    invoke-virtual {p0}, Lio/didomi/sdk/V;->n()V

    :cond_35
    return v1
.end method

.method public final declared-synchronized a(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;ZLjava/lang/String;Lio/didomi/sdk/apiEvents/b;Lio/didomi/sdk/M2;Lio/didomi/sdk/P8;)Z
    .registers 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lio/didomi/sdk/models/InternalPurpose;",
            ">;",
            "Ljava/util/Set<",
            "Lio/didomi/sdk/models/InternalPurpose;",
            ">;",
            "Ljava/util/Set<",
            "Lio/didomi/sdk/models/InternalPurpose;",
            ">;",
            "Ljava/util/Set<",
            "Lio/didomi/sdk/models/InternalPurpose;",
            ">;",
            "Ljava/util/Set<",
            "Lio/didomi/sdk/models/InternalVendor;",
            ">;",
            "Ljava/util/Set<",
            "Lio/didomi/sdk/models/InternalVendor;",
            ">;",
            "Ljava/util/Set<",
            "Lio/didomi/sdk/models/InternalVendor;",
            ">;",
            "Ljava/util/Set<",
            "Lio/didomi/sdk/models/InternalVendor;",
            ">;Z",
            "Ljava/lang/String;",
            "Lio/didomi/sdk/apiEvents/b;",
            "Lio/didomi/sdk/M2;",
            "Lio/didomi/sdk/P8;",
            ")Z"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    const-string v0, "apiEventsRepository"

    move-object/from16 v13, p11

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventsRepository"

    move-object/from16 v12, p12

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userStatusRepository"

    move-object/from16 v14, p13

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/didomi/sdk/V;->b()Lio/didomi/sdk/consent/model/ConsentToken;

    move-result-object v0

    invoke-static {v0}, Lio/didomi/sdk/Y;->h(Lio/didomi/sdk/consent/model/ConsentToken;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {p0}, Lio/didomi/sdk/V;->b()Lio/didomi/sdk/consent/model/ConsentToken;

    move-result-object v0

    invoke-static {v0}, Lio/didomi/sdk/Y;->d(Lio/didomi/sdk/consent/model/ConsentToken;)Ljava/util/Set;

    move-result-object v3

    invoke-virtual {p0}, Lio/didomi/sdk/V;->b()Lio/didomi/sdk/consent/model/ConsentToken;

    move-result-object v0

    invoke-static {v0}, Lio/didomi/sdk/Y;->f(Lio/didomi/sdk/consent/model/ConsentToken;)Ljava/util/Set;

    move-result-object v4

    invoke-virtual {p0}, Lio/didomi/sdk/V;->b()Lio/didomi/sdk/consent/model/ConsentToken;

    move-result-object v0

    invoke-static {v0}, Lio/didomi/sdk/Y;->b(Lio/didomi/sdk/consent/model/ConsentToken;)Ljava/util/Set;

    move-result-object v5

    invoke-virtual {p0}, Lio/didomi/sdk/V;->b()Lio/didomi/sdk/consent/model/ConsentToken;

    move-result-object v0

    invoke-static {v0}, Lio/didomi/sdk/Y;->i(Lio/didomi/sdk/consent/model/ConsentToken;)Ljava/util/Set;

    move-result-object v6

    invoke-virtual {p0}, Lio/didomi/sdk/V;->b()Lio/didomi/sdk/consent/model/ConsentToken;

    move-result-object v0

    invoke-static {v0}, Lio/didomi/sdk/Y;->e(Lio/didomi/sdk/consent/model/ConsentToken;)Ljava/util/Set;

    move-result-object v7

    invoke-virtual {p0}, Lio/didomi/sdk/V;->b()Lio/didomi/sdk/consent/model/ConsentToken;

    move-result-object v0

    invoke-static {v0}, Lio/didomi/sdk/Y;->g(Lio/didomi/sdk/consent/model/ConsentToken;)Ljava/util/Set;

    move-result-object v8

    invoke-virtual {p0}, Lio/didomi/sdk/V;->b()Lio/didomi/sdk/consent/model/ConsentToken;

    move-result-object v0

    invoke-static {v0}, Lio/didomi/sdk/Y;->c(Lio/didomi/sdk/consent/model/ConsentToken;)Ljava/util/Set;

    move-result-object v9

    invoke-virtual/range {p0 .. p8}, Lio/didomi/sdk/V;->a(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_6a

    move-object v1, p0

    move/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p12

    move-object/from16 v13, p11

    move-object/from16 v14, p13

    invoke-virtual/range {v1 .. v14}, Lio/didomi/sdk/V;->a(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;ZLjava/lang/String;Lio/didomi/sdk/M2;Lio/didomi/sdk/apiEvents/b;Lio/didomi/sdk/P8;)V
    :try_end_6a
    .catchall {:try_start_1 .. :try_end_6a} :catchall_6c

    :cond_6a
    monitor-exit p0

    return v0

    :catchall_6c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(ZZZZLjava/lang/String;Lio/didomi/sdk/apiEvents/b;Lio/didomi/sdk/M2;Lio/didomi/sdk/P8;)Z
    .registers 24

    move-object v14, p0

    const-string v0, "apiEventsRepository"

    move-object/from16 v11, p6

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventsRepository"

    move-object/from16 v12, p7

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userStatusRepository"

    move-object/from16 v13, p8

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_23

    iget-object v0, v14, Lio/didomi/sdk/V;->b:Lio/didomi/sdk/V8;

    invoke-virtual {v0}, Lio/didomi/sdk/V8;->l()Ljava/util/Set;

    move-result-object v0

    invoke-static {}, Lkotlin/collections/h0;->emptySet()Ljava/util/Set;

    move-result-object v1

    goto :goto_2d

    :cond_23
    invoke-static {}, Lkotlin/collections/h0;->emptySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, v14, Lio/didomi/sdk/V;->b:Lio/didomi/sdk/V8;

    invoke-virtual {v1}, Lio/didomi/sdk/V8;->l()Ljava/util/Set;

    move-result-object v1

    :goto_2d
    move-object v2, v1

    move-object v1, v0

    if-eqz p2, :cond_3c

    iget-object v0, v14, Lio/didomi/sdk/V;->b:Lio/didomi/sdk/V8;

    invoke-virtual {v0}, Lio/didomi/sdk/V8;->n()Ljava/util/Set;

    move-result-object v0

    invoke-static {}, Lkotlin/collections/h0;->emptySet()Ljava/util/Set;

    move-result-object v3

    goto :goto_46

    :cond_3c
    invoke-static {}, Lkotlin/collections/h0;->emptySet()Ljava/util/Set;

    move-result-object v0

    iget-object v3, v14, Lio/didomi/sdk/V;->b:Lio/didomi/sdk/V8;

    invoke-virtual {v3}, Lio/didomi/sdk/V8;->n()Ljava/util/Set;

    move-result-object v3

    :goto_46
    move-object v4, v3

    move-object v3, v0

    if-eqz p3, :cond_55

    iget-object v0, v14, Lio/didomi/sdk/V;->b:Lio/didomi/sdk/V8;

    invoke-virtual {v0}, Lio/didomi/sdk/V8;->r()Ljava/util/Set;

    move-result-object v0

    invoke-static {}, Lkotlin/collections/h0;->emptySet()Ljava/util/Set;

    move-result-object v5

    goto :goto_5f

    :cond_55
    invoke-static {}, Lkotlin/collections/h0;->emptySet()Ljava/util/Set;

    move-result-object v0

    iget-object v5, v14, Lio/didomi/sdk/V;->b:Lio/didomi/sdk/V8;

    invoke-virtual {v5}, Lio/didomi/sdk/V8;->r()Ljava/util/Set;

    move-result-object v5

    :goto_5f
    move-object v6, v5

    move-object v5, v0

    if-eqz p4, :cond_6e

    iget-object v0, v14, Lio/didomi/sdk/V;->b:Lio/didomi/sdk/V8;

    invoke-virtual {v0}, Lio/didomi/sdk/V8;->t()Ljava/util/Set;

    move-result-object v0

    invoke-static {}, Lkotlin/collections/h0;->emptySet()Ljava/util/Set;

    move-result-object v7

    goto :goto_78

    :cond_6e
    invoke-static {}, Lkotlin/collections/h0;->emptySet()Ljava/util/Set;

    move-result-object v0

    iget-object v7, v14, Lio/didomi/sdk/V;->b:Lio/didomi/sdk/V8;

    invoke-virtual {v7}, Lio/didomi/sdk/V8;->t()Ljava/util/Set;

    move-result-object v7

    :goto_78
    move-object v8, v7

    move-object v7, v0

    const/4 v9, 0x1

    move-object v0, p0

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    move-object/from16 v13, p8

    invoke-virtual/range {v0 .. v13}, Lio/didomi/sdk/V;->a(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;ZLjava/lang/String;Lio/didomi/sdk/apiEvents/b;Lio/didomi/sdk/M2;Lio/didomi/sdk/P8;)Z

    move-result v0

    return v0
.end method

.method public final b(Ljava/lang/String;)Lio/didomi/sdk/consent/model/ConsentStatus;
    .registers 7

    const-string v0, "vendorId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/didomi/sdk/V;->b:Lio/didomi/sdk/V8;

    invoke-virtual {v0, p1}, Lio/didomi/sdk/V8;->g(Ljava/lang/String;)Lio/didomi/sdk/models/InternalVendor;

    move-result-object v0

    if-nez v0, :cond_10

    sget-object p1, Lio/didomi/sdk/consent/model/ConsentStatus;->UNKNOWN:Lio/didomi/sdk/consent/model/ConsentStatus;

    return-object p1

    :cond_10
    invoke-static {v0}, Lio/didomi/sdk/q3;->b(Lio/didomi/sdk/models/InternalVendor;)Z

    move-result v1

    if-eqz v1, :cond_19

    sget-object p1, Lio/didomi/sdk/consent/model/ConsentStatus;->ENABLE:Lio/didomi/sdk/consent/model/ConsentStatus;

    return-object p1

    :cond_19
    invoke-virtual {p0}, Lio/didomi/sdk/V;->b()Lio/didomi/sdk/consent/model/ConsentToken;

    move-result-object v1

    invoke-static {v1, p1}, Lio/didomi/sdk/Y;->c(Lio/didomi/sdk/consent/model/ConsentToken;Ljava/lang/String;)Lio/didomi/sdk/consent/model/ConsentStatus;

    move-result-object p1

    sget-object v1, Lio/didomi/sdk/consent/model/ConsentStatus;->ENABLE:Lio/didomi/sdk/consent/model/ConsentStatus;

    if-eq p1, v1, :cond_28

    sget-object p1, Lio/didomi/sdk/consent/model/ConsentStatus;->DISABLE:Lio/didomi/sdk/consent/model/ConsentStatus;

    return-object p1

    :cond_28
    invoke-virtual {v0}, Lio/didomi/sdk/models/InternalVendor;->getPurposeIds()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_30
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_47

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lio/didomi/sdk/V;->a(Ljava/lang/String;)Lio/didomi/sdk/consent/model/ConsentStatus;

    move-result-object v1

    sget-object v2, Lio/didomi/sdk/consent/model/ConsentStatus;->ENABLE:Lio/didomi/sdk/consent/model/ConsentStatus;

    if-eq v1, v2, :cond_30

    sget-object p1, Lio/didomi/sdk/consent/model/ConsentStatus;->DISABLE:Lio/didomi/sdk/consent/model/ConsentStatus;

    return-object p1

    :cond_47
    invoke-virtual {v0}, Lio/didomi/sdk/models/InternalVendor;->getSpecialFeatureIds()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_97

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lio/didomi/sdk/V;->b:Lio/didomi/sdk/V8;

    invoke-virtual {v1}, Lio/didomi/sdk/V8;->k()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_65
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_83

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lio/didomi/sdk/models/InternalPurpose;

    invoke-virtual {v3}, Lio/didomi/sdk/models/InternalPurpose;->isSpecialFeature()Z

    move-result v4

    if-eqz v4, :cond_65

    invoke-virtual {v3}, Lio/didomi/sdk/models/InternalPurpose;->getIabId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_65

    goto :goto_84

    :cond_83
    const/4 v2, 0x0

    :goto_84
    check-cast v2, Lio/didomi/sdk/models/InternalPurpose;

    if-eqz v2, :cond_4f

    invoke-virtual {v2}, Lio/didomi/sdk/models/InternalPurpose;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/didomi/sdk/V;->a(Ljava/lang/String;)Lio/didomi/sdk/consent/model/ConsentStatus;

    move-result-object v0

    sget-object v1, Lio/didomi/sdk/consent/model/ConsentStatus;->ENABLE:Lio/didomi/sdk/consent/model/ConsentStatus;

    if-eq v0, v1, :cond_4f

    sget-object p1, Lio/didomi/sdk/consent/model/ConsentStatus;->DISABLE:Lio/didomi/sdk/consent/model/ConsentStatus;

    return-object p1

    :cond_97
    sget-object p1, Lio/didomi/sdk/consent/model/ConsentStatus;->ENABLE:Lio/didomi/sdk/consent/model/ConsentStatus;

    return-object p1
.end method

.method public final b()Lio/didomi/sdk/consent/model/ConsentToken;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/V;->k:Lio/didomi/sdk/consent/model/ConsentToken;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "consentToken"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final c(Ljava/lang/String;)Lio/didomi/sdk/consent/model/ConsentStatus;
    .registers 3

    const-string v0, "purposeId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/didomi/sdk/V;->b:Lio/didomi/sdk/V8;

    invoke-virtual {v0, p1}, Lio/didomi/sdk/V8;->c(Ljava/lang/String;)Lio/didomi/sdk/models/InternalPurpose;

    move-result-object v0

    if-nez v0, :cond_10

    sget-object p1, Lio/didomi/sdk/consent/model/ConsentStatus;->UNKNOWN:Lio/didomi/sdk/consent/model/ConsentStatus;

    goto :goto_21

    :cond_10
    invoke-direct {p0, p1}, Lio/didomi/sdk/V;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    sget-object p1, Lio/didomi/sdk/consent/model/ConsentStatus;->ENABLE:Lio/didomi/sdk/consent/model/ConsentStatus;

    goto :goto_21

    :cond_19
    invoke-virtual {p0}, Lio/didomi/sdk/V;->b()Lio/didomi/sdk/consent/model/ConsentToken;

    move-result-object v0

    invoke-static {v0, p1}, Lio/didomi/sdk/Y;->a(Lio/didomi/sdk/consent/model/ConsentToken;Ljava/lang/String;)Lio/didomi/sdk/consent/model/ConsentStatus;

    move-result-object p1

    :goto_21
    return-object p1
.end method

.method public final d(Ljava/lang/String;)Lio/didomi/sdk/consent/model/ConsentStatus;
    .registers 4

    const-string v0, "vendorId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/didomi/sdk/V;->b:Lio/didomi/sdk/V8;

    invoke-virtual {v0, p1}, Lio/didomi/sdk/V8;->g(Ljava/lang/String;)Lio/didomi/sdk/models/InternalVendor;

    move-result-object v0

    if-nez v0, :cond_10

    sget-object p1, Lio/didomi/sdk/consent/model/ConsentStatus;->UNKNOWN:Lio/didomi/sdk/consent/model/ConsentStatus;

    return-object p1

    :cond_10
    invoke-virtual {p0}, Lio/didomi/sdk/V;->b()Lio/didomi/sdk/consent/model/ConsentToken;

    move-result-object v1

    invoke-static {v1, p1}, Lio/didomi/sdk/Y;->d(Lio/didomi/sdk/consent/model/ConsentToken;Ljava/lang/String;)Lio/didomi/sdk/consent/model/ConsentStatus;

    move-result-object p1

    sget-object v1, Lio/didomi/sdk/consent/model/ConsentStatus;->DISABLE:Lio/didomi/sdk/consent/model/ConsentStatus;

    if-ne p1, v1, :cond_1d

    return-object v1

    :cond_1d
    invoke-static {v0}, Lio/didomi/sdk/q3;->b(Lio/didomi/sdk/models/InternalVendor;)Z

    move-result p1

    if-eqz p1, :cond_26

    sget-object p1, Lio/didomi/sdk/consent/model/ConsentStatus;->ENABLE:Lio/didomi/sdk/consent/model/ConsentStatus;

    return-object p1

    :cond_26
    invoke-virtual {v0}, Lio/didomi/sdk/models/InternalVendor;->getLegIntPurposeIds()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lio/didomi/sdk/V;->c(Ljava/lang/String;)Lio/didomi/sdk/consent/model/ConsentStatus;

    move-result-object v0

    sget-object v1, Lio/didomi/sdk/consent/model/ConsentStatus;->DISABLE:Lio/didomi/sdk/consent/model/ConsentStatus;

    if-ne v0, v1, :cond_2e

    return-object v1

    :cond_43
    sget-object p1, Lio/didomi/sdk/consent/model/ConsentStatus;->ENABLE:Lio/didomi/sdk/consent/model/ConsentStatus;

    return-object p1
.end method

.method public final d()Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lio/didomi/sdk/V;->e()Lio/didomi/sdk/Q2;

    move-result-object v0

    iget-object v1, p0, Lio/didomi/sdk/V;->a:Landroid/content/SharedPreferences;

    invoke-virtual {v0, v1}, Lio/didomi/sdk/Q2;->a(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e()Lio/didomi/sdk/Q2;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/V;->i:Lkotlin/i;

    invoke-interface {v0}, Lkotlin/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/didomi/sdk/Q2;

    return-object v0
.end method

.method public final f()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/V;->h:Lkotlin/i;

    invoke-interface {v0}, Lkotlin/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public final f(Ljava/lang/String;)Z
    .registers 4

    const-string v0, "vendorId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/didomi/sdk/V;->b()Lio/didomi/sdk/consent/model/ConsentToken;

    move-result-object v0

    invoke-static {v0, p1}, Lio/didomi/sdk/Y;->c(Lio/didomi/sdk/consent/model/ConsentToken;Ljava/lang/String;)Lio/didomi/sdk/consent/model/ConsentStatus;

    move-result-object v0

    sget-object v1, Lio/didomi/sdk/consent/model/ConsentStatus;->UNKNOWN:Lio/didomi/sdk/consent/model/ConsentStatus;

    if-ne v0, v1, :cond_1d

    invoke-virtual {p0}, Lio/didomi/sdk/V;->b()Lio/didomi/sdk/consent/model/ConsentToken;

    move-result-object v0

    invoke-static {v0, p1}, Lio/didomi/sdk/Y;->d(Lio/didomi/sdk/consent/model/ConsentToken;Ljava/lang/String;)Lio/didomi/sdk/consent/model/ConsentStatus;

    move-result-object p1

    if-ne p1, v1, :cond_1d

    const/4 p1, 0x1

    goto :goto_1e

    :cond_1d
    const/4 p1, 0x0

    :goto_1e
    return p1
.end method

.method public final g()Ljava/lang/Integer;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/V;->c:Lio/didomi/sdk/H;

    invoke-virtual {v0}, Lio/didomi/sdk/H;->b()Lio/didomi/sdk/k;

    move-result-object v0

    invoke-static {v0}, Lio/didomi/sdk/l;->b(Lio/didomi/sdk/k;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lio/didomi/sdk/V;->e:Lio/didomi/sdk/h3;

    invoke-interface {v0}, Lio/didomi/sdk/h3;->getVersion()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    return-object v0
.end method

.method public final h()Z
    .registers 2

    invoke-virtual {p0}, Lio/didomi/sdk/V;->b()Lio/didomi/sdk/consent/model/ConsentToken;

    move-result-object v0

    invoke-static {v0}, Lio/didomi/sdk/Y;->k(Lio/didomi/sdk/consent/model/ConsentToken;)Z

    move-result v0

    return v0
.end method

.method public final i()Z
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/V;->c:Lio/didomi/sdk/H;

    invoke-static {v0}, Lio/didomi/sdk/I;->b(Lio/didomi/sdk/H;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_2a

    :cond_9
    iget-object v0, p0, Lio/didomi/sdk/V;->b:Lio/didomi/sdk/V8;

    invoke-virtual {v0}, Lio/didomi/sdk/V8;->q()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_2a

    :cond_16
    iget-object v0, p0, Lio/didomi/sdk/V;->b:Lio/didomi/sdk/V8;

    invoke-virtual {v0}, Lio/didomi/sdk/V8;->l()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lio/didomi/sdk/V;->b:Lio/didomi/sdk/V8;

    invoke-virtual {v1}, Lio/didomi/sdk/V8;->r()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/didomi/sdk/V;->a(Ljava/util/Set;Ljava/util/Set;)Z

    move-result v0

    if-nez v0, :cond_2a

    const/4 v0, 0x1

    goto :goto_2b

    :cond_2a
    :goto_2a
    const/4 v0, 0x0

    :goto_2b
    return v0
.end method

.method public final j()Z
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/V;->c:Lio/didomi/sdk/H;

    invoke-static {v0}, Lio/didomi/sdk/I;->b(Lio/didomi/sdk/H;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_2a

    :cond_9
    iget-object v0, p0, Lio/didomi/sdk/V;->b:Lio/didomi/sdk/V8;

    invoke-virtual {v0}, Lio/didomi/sdk/V8;->t()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_2a

    :cond_16
    iget-object v0, p0, Lio/didomi/sdk/V;->b:Lio/didomi/sdk/V8;

    invoke-virtual {v0}, Lio/didomi/sdk/V8;->n()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lio/didomi/sdk/V;->b:Lio/didomi/sdk/V8;

    invoke-virtual {v1}, Lio/didomi/sdk/V8;->t()Ljava/util/Set;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lio/didomi/sdk/V;->b(Ljava/util/Set;Ljava/util/Set;)Z

    move-result v0

    if-nez v0, :cond_2a

    const/4 v0, 0x1

    goto :goto_2b

    :cond_2a
    :goto_2a
    const/4 v0, 0x0

    :goto_2b
    return v0
.end method

.method public final k()Z
    .registers 2

    invoke-virtual {p0}, Lio/didomi/sdk/V;->i()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Lio/didomi/sdk/V;->j()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public final l()Z
    .registers 4

    iget-object v0, p0, Lio/didomi/sdk/V;->c:Lio/didomi/sdk/H;

    invoke-virtual {v0}, Lio/didomi/sdk/H;->b()Lio/didomi/sdk/k;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/k;->e()Lio/didomi/sdk/k$f;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/k$f;->b()I

    move-result v0

    invoke-virtual {p0}, Lio/didomi/sdk/V;->b()Lio/didomi/sdk/consent/model/ConsentToken;

    move-result-object v1

    invoke-virtual {v1}, Lio/didomi/sdk/consent/model/ConsentToken;->getUpdated()Ljava/util/Date;

    move-result-object v1

    sget-object v2, Lio/didomi/sdk/v0;->a:Lio/didomi/sdk/v0;

    invoke-virtual {v2, v1}, Lio/didomi/sdk/v0;->a(Ljava/util/Date;)I

    move-result v1

    if-lt v1, v0, :cond_20

    const/4 v0, 0x1

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    :goto_21
    return v0
.end method

.method public final m()V
    .registers 3

    new-instance v0, Lio/didomi/sdk/consent/model/ConsentToken;

    sget-object v1, Lio/didomi/sdk/v0;->a:Lio/didomi/sdk/v0;

    invoke-virtual {v1}, Lio/didomi/sdk/v0;->a()Ljava/util/Date;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/didomi/sdk/consent/model/ConsentToken;-><init>(Ljava/util/Date;)V

    iput-object v0, p0, Lio/didomi/sdk/V;->k:Lio/didomi/sdk/consent/model/ConsentToken;

    invoke-virtual {p0}, Lio/didomi/sdk/V;->n()V

    return-void
.end method

.method public final n()V
    .registers 3

    invoke-virtual {p0}, Lio/didomi/sdk/V;->b()Lio/didomi/sdk/consent/model/ConsentToken;

    move-result-object v0

    iget-object v1, p0, Lio/didomi/sdk/V;->e:Lio/didomi/sdk/h3;

    invoke-interface {v1}, Lio/didomi/sdk/h3;->getVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Lio/didomi/sdk/consent/model/ConsentToken;->setTcfVersion(I)V

    invoke-virtual {p0}, Lio/didomi/sdk/V;->b()Lio/didomi/sdk/consent/model/ConsentToken;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/didomi/sdk/V;->b(Lio/didomi/sdk/consent/model/ConsentToken;)V

    invoke-virtual {p0}, Lio/didomi/sdk/V;->b()Lio/didomi/sdk/consent/model/ConsentToken;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/didomi/sdk/V;->c(Lio/didomi/sdk/consent/model/ConsentToken;)V

    invoke-direct {p0}, Lio/didomi/sdk/V;->o()V

    iget-object v0, p0, Lio/didomi/sdk/V;->d:Lio/didomi/sdk/j0;

    invoke-virtual {p0}, Lio/didomi/sdk/V;->b()Lio/didomi/sdk/consent/model/ConsentToken;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/didomi/sdk/j0;->a(Lio/didomi/sdk/consent/model/ConsentToken;)V

    return-void
.end method

.method public final p()V
    .registers 2

    invoke-virtual {p0}, Lio/didomi/sdk/V;->h()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {p0}, Lio/didomi/sdk/V;->b()Lio/didomi/sdk/consent/model/ConsentToken;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/didomi/sdk/V;->a(Lio/didomi/sdk/consent/model/ConsentToken;)Lio/didomi/sdk/consent/model/ConsentToken;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/didomi/sdk/V;->c(Lio/didomi/sdk/consent/model/ConsentToken;)V

    return-void
.end method

.method public final q()Z
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/V;->c:Lio/didomi/sdk/H;

    invoke-virtual {v0}, Lio/didomi/sdk/H;->e()Lio/didomi/sdk/Regulation;

    move-result-object v0

    sget-object v1, Lio/didomi/sdk/Regulation;->NONE:Lio/didomi/sdk/Regulation;

    if-eq v0, v1, :cond_1e

    invoke-virtual {p0}, Lio/didomi/sdk/V;->k()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Lio/didomi/sdk/V;->l()Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-virtual {p0}, Lio/didomi/sdk/V;->h()Z

    move-result v0

    if-nez v0, :cond_1e

    :cond_1c
    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    return v0
.end method
