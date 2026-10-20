###### Class io.didomi.drawable.M2 (io.didomi.sdk.M2)
.class public Lio/didomi/sdk/M2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010#\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0017\u0018\u00002\u00020\u0001B\u0011\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0017\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006H\u0012\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0017\u0010\r\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0017\u0010\t\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\t\u0010\u000eJ)\u0010\r\u001a\u00020\u00082\u0006\u0010\u0010\u001a\u00020\u000f2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u000c\u001a\u00020\u0012H\u0016\u00a2\u0006\u0004\u0008\r\u0010\u0013J\u0017\u0010\r\u001a\u00020\u00082\u0006\u0010\u0010\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u0014J\u0017\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0007\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0017\u0010\r\u001a\u00020\u00152\u0006\u0010\u0019\u001a\u00020\u0018H\u0016\u00a2\u0006\u0004\u0008\r\u0010\u001aJ\u0017\u0010\r\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006H\u0014\u00a2\u0006\u0004\u0008\r\u0010\nR\u0014\u0010\u0003\u001a\u00020\u00028\u0012X\u0092\u0004\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u001bR \u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u001c8\u0010X\u0090\u0004\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\u001d\u001a\u0004\u0008\r\u0010\u001eR \u0010!\u001a\u0008\u0012\u0004\u0012\u00020 0\u001c8\u0010X\u0090\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010\u001d\u001a\u0004\u0008\t\u0010\u001e\u00a8\u0006\""
    }
    d2 = {
        "Lio/didomi/sdk/M2;",
        "",
        "Landroid/os/Handler;",
        "handler",
        "<init>",
        "(Landroid/os/Handler;)V",
        "Lio/didomi/sdk/events/Event;",
        "event",
        "",
        "b",
        "(Lio/didomi/sdk/events/Event;)Z",
        "Lio/didomi/sdk/functionalinterfaces/DidomiEventListener;",
        "listener",
        "a",
        "(Lio/didomi/sdk/functionalinterfaces/DidomiEventListener;)Z",
        "",
        "vendorId",
        "enabled",
        "Lio/didomi/sdk/functionalinterfaces/DidomiVendorStatusListener;",
        "(Ljava/lang/String;Ljava/lang/Boolean;Lio/didomi/sdk/functionalinterfaces/DidomiVendorStatusListener;)Z",
        "(Ljava/lang/String;)Z",
        "",
        "c",
        "(Lio/didomi/sdk/events/Event;)V",
        "Lio/didomi/sdk/models/CurrentUserStatus;",
        "currentUserStatus",
        "(Lio/didomi/sdk/models/CurrentUserStatus;)V",
        "Landroid/os/Handler;",
        "",
        "Ljava/util/Set;",
        "()Ljava/util/Set;",
        "listeners",
        "Lio/didomi/sdk/X8;",
        "listenersForVendorStatuses",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/didomi/sdk/functionalinterfaces/DidomiEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/didomi/sdk/X8;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lio/didomi/sdk/M2;-><init>(Landroid/os/Handler;ILkotlin/jvm/internal/n;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .registers 3

    const-string v0, "handler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/M2;->a:Landroid/os/Handler;

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/M2;->b:Ljava/util/Set;

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/M2;->c:Ljava/util/Set;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Handler;ILkotlin/jvm/internal/n;)V
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_d

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    :cond_d
    invoke-direct {p0, p1}, Lio/didomi/sdk/M2;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method private static final a(Lio/didomi/sdk/M2;Lio/didomi/sdk/events/Event;)V
    .registers 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/didomi/sdk/M2;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_12
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/didomi/sdk/functionalinterfaces/DidomiEventListener;

    instance-of v2, p1, Lio/didomi/sdk/events/ConsentChangedEvent;

    if-eqz v2, :cond_2a

    move-object v2, p1

    check-cast v2, Lio/didomi/sdk/events/ConsentChangedEvent;

    invoke-interface {v1, v2}, Lio/didomi/sdk/functionalinterfaces/DidomiEventListener;->consentChanged(Lio/didomi/sdk/events/ConsentChangedEvent;)V

    goto/16 :goto_1ff

    :cond_2a
    instance-of v2, p1, Lio/didomi/sdk/events/ErrorEvent;

    if-eqz v2, :cond_36

    move-object v2, p1

    check-cast v2, Lio/didomi/sdk/events/ErrorEvent;

    invoke-interface {v1, v2}, Lio/didomi/sdk/functionalinterfaces/DidomiEventListener;->error(Lio/didomi/sdk/events/ErrorEvent;)V

    goto/16 :goto_1ff

    :cond_36
    instance-of v2, p1, Lio/didomi/sdk/events/ReadyEvent;

    if-eqz v2, :cond_42

    move-object v2, p1

    check-cast v2, Lio/didomi/sdk/events/ReadyEvent;

    invoke-interface {v1, v2}, Lio/didomi/sdk/functionalinterfaces/DidomiEventListener;->ready(Lio/didomi/sdk/events/ReadyEvent;)V

    goto/16 :goto_1ff

    :cond_42
    instance-of v2, p1, Lio/didomi/sdk/events/HideNoticeEvent;

    if-eqz v2, :cond_4e

    move-object v2, p1

    check-cast v2, Lio/didomi/sdk/events/HideNoticeEvent;

    invoke-interface {v1, v2}, Lio/didomi/sdk/functionalinterfaces/DidomiEventListener;->hideNotice(Lio/didomi/sdk/events/HideNoticeEvent;)V

    goto/16 :goto_1ff

    :cond_4e
    instance-of v2, p1, Lio/didomi/sdk/events/ShowNoticeEvent;

    if-eqz v2, :cond_5a

    move-object v2, p1

    check-cast v2, Lio/didomi/sdk/events/ShowNoticeEvent;

    invoke-interface {v1, v2}, Lio/didomi/sdk/functionalinterfaces/DidomiEventListener;->showNotice(Lio/didomi/sdk/events/ShowNoticeEvent;)V

    goto/16 :goto_1ff

    :cond_5a
    instance-of v2, p1, Lio/didomi/sdk/events/NoticeClickAgreeEvent;

    if-eqz v2, :cond_66

    move-object v2, p1

    check-cast v2, Lio/didomi/sdk/events/NoticeClickAgreeEvent;

    invoke-interface {v1, v2}, Lio/didomi/sdk/functionalinterfaces/DidomiEventListener;->noticeClickAgree(Lio/didomi/sdk/events/NoticeClickAgreeEvent;)V

    goto/16 :goto_1ff

    :cond_66
    instance-of v2, p1, Lio/didomi/sdk/events/NoticeClickDisagreeEvent;

    if-eqz v2, :cond_72

    move-object v2, p1

    check-cast v2, Lio/didomi/sdk/events/NoticeClickDisagreeEvent;

    invoke-interface {v1, v2}, Lio/didomi/sdk/functionalinterfaces/DidomiEventListener;->noticeClickDisagree(Lio/didomi/sdk/events/NoticeClickDisagreeEvent;)V

    goto/16 :goto_1ff

    :cond_72
    instance-of v2, p1, Lio/didomi/sdk/events/NoticeClickMoreInfoEvent;

    if-eqz v2, :cond_7e

    move-object v2, p1

    check-cast v2, Lio/didomi/sdk/events/NoticeClickMoreInfoEvent;

    invoke-interface {v1, v2}, Lio/didomi/sdk/functionalinterfaces/DidomiEventListener;->noticeClickMoreInfo(Lio/didomi/sdk/events/NoticeClickMoreInfoEvent;)V

    goto/16 :goto_1ff

    :cond_7e
    instance-of v2, p1, Lio/didomi/sdk/events/NoticeClickPrivacyPolicyEvent;

    if-eqz v2, :cond_8a

    move-object v2, p1

    check-cast v2, Lio/didomi/sdk/events/NoticeClickPrivacyPolicyEvent;

    invoke-interface {v1, v2}, Lio/didomi/sdk/functionalinterfaces/DidomiEventListener;->noticeClickPrivacyPolicy(Lio/didomi/sdk/events/NoticeClickPrivacyPolicyEvent;)V

    goto/16 :goto_1ff

    :cond_8a
    instance-of v2, p1, Lio/didomi/sdk/events/NoticeClickViewVendorsEvent;

    if-eqz v2, :cond_96

    move-object v2, p1

    check-cast v2, Lio/didomi/sdk/events/NoticeClickViewVendorsEvent;

    invoke-interface {v1, v2}, Lio/didomi/sdk/functionalinterfaces/DidomiEventListener;->noticeClickViewVendors(Lio/didomi/sdk/events/NoticeClickViewVendorsEvent;)V

    goto/16 :goto_1ff

    :cond_96
    instance-of v2, p1, Lio/didomi/sdk/events/NoticeClickViewSPIPurposesEvent;

    if-eqz v2, :cond_a2

    move-object v2, p1

    check-cast v2, Lio/didomi/sdk/events/NoticeClickViewSPIPurposesEvent;

    invoke-interface {v1, v2}, Lio/didomi/sdk/functionalinterfaces/DidomiEventListener;->noticeClickViewSPIPurposes(Lio/didomi/sdk/events/NoticeClickViewSPIPurposesEvent;)V

    goto/16 :goto_1ff

    :cond_a2
    instance-of v2, p1, Lio/didomi/sdk/events/HidePreferencesEvent;

    if-eqz v2, :cond_ae

    move-object v2, p1

    check-cast v2, Lio/didomi/sdk/events/HidePreferencesEvent;

    invoke-interface {v1, v2}, Lio/didomi/sdk/functionalinterfaces/DidomiEventListener;->hidePreferences(Lio/didomi/sdk/events/HidePreferencesEvent;)V

    goto/16 :goto_1ff

    :cond_ae
    instance-of v2, p1, Lio/didomi/sdk/events/ShowPreferencesEvent;

    if-eqz v2, :cond_ba

    move-object v2, p1

    check-cast v2, Lio/didomi/sdk/events/ShowPreferencesEvent;

    invoke-interface {v1, v2}, Lio/didomi/sdk/functionalinterfaces/DidomiEventListener;->showPreferences(Lio/didomi/sdk/events/ShowPreferencesEvent;)V

    goto/16 :goto_1ff

    :cond_ba
    instance-of v2, p1, Lio/didomi/sdk/events/PreferencesClickViewPurposesEvent;

    if-eqz v2, :cond_c6

    move-object v2, p1

    check-cast v2, Lio/didomi/sdk/events/PreferencesClickViewPurposesEvent;

    invoke-interface {v1, v2}, Lio/didomi/sdk/functionalinterfaces/DidomiEventListener;->preferencesClickViewPurposes(Lio/didomi/sdk/events/PreferencesClickViewPurposesEvent;)V

    goto/16 :goto_1ff

    :cond_c6
    instance-of v2, p1, Lio/didomi/sdk/events/PreferencesClickViewVendorsEvent;

    if-eqz v2, :cond_d2

    move-object v2, p1

    check-cast v2, Lio/didomi/sdk/events/PreferencesClickViewVendorsEvent;

    invoke-interface {v1, v2}, Lio/didomi/sdk/functionalinterfaces/DidomiEventListener;->preferencesClickViewVendors(Lio/didomi/sdk/events/PreferencesClickViewVendorsEvent;)V

    goto/16 :goto_1ff

    :cond_d2
    instance-of v2, p1, Lio/didomi/sdk/events/PreferencesClickViewSPIPurposesEvent;

    if-eqz v2, :cond_de

    move-object v2, p1

    check-cast v2, Lio/didomi/sdk/events/PreferencesClickViewSPIPurposesEvent;

    invoke-interface {v1, v2}, Lio/didomi/sdk/functionalinterfaces/DidomiEventListener;->preferencesClickViewSPIPurposes(Lio/didomi/sdk/events/PreferencesClickViewSPIPurposesEvent;)V

    goto/16 :goto_1ff

    :cond_de
    instance-of v2, p1, Lio/didomi/sdk/events/PreferencesClickAgreeToAllEvent;

    if-eqz v2, :cond_ea

    move-object v2, p1

    check-cast v2, Lio/didomi/sdk/events/PreferencesClickAgreeToAllEvent;

    invoke-interface {v1, v2}, Lio/didomi/sdk/functionalinterfaces/DidomiEventListener;->preferencesClickAgreeToAll(Lio/didomi/sdk/events/PreferencesClickAgreeToAllEvent;)V

    goto/16 :goto_1ff

    :cond_ea
    instance-of v2, p1, Lio/didomi/sdk/events/PreferencesClickDisagreeToAllEvent;

    if-eqz v2, :cond_f6

    move-object v2, p1

    check-cast v2, Lio/didomi/sdk/events/PreferencesClickDisagreeToAllEvent;

    invoke-interface {v1, v2}, Lio/didomi/sdk/functionalinterfaces/DidomiEventListener;->preferencesClickDisagreeToAll(Lio/didomi/sdk/events/PreferencesClickDisagreeToAllEvent;)V

    goto/16 :goto_1ff

    :cond_f6
    instance-of v2, p1, Lio/didomi/sdk/events/PreferencesClickAgreeToAllPurposesEvent;

    if-eqz v2, :cond_102

    move-object v2, p1

    check-cast v2, Lio/didomi/sdk/events/PreferencesClickAgreeToAllPurposesEvent;

    invoke-interface {v1, v2}, Lio/didomi/sdk/functionalinterfaces/DidomiEventListener;->preferencesClickAgreeToAllPurposes(Lio/didomi/sdk/events/PreferencesClickAgreeToAllPurposesEvent;)V

    goto/16 :goto_1ff

    :cond_102
    instance-of v2, p1, Lio/didomi/sdk/events/PreferencesClickDisagreeToAllPurposesEvent;

    if-eqz v2, :cond_10e

    move-object v2, p1

    check-cast v2, Lio/didomi/sdk/events/PreferencesClickDisagreeToAllPurposesEvent;

    invoke-interface {v1, v2}, Lio/didomi/sdk/functionalinterfaces/DidomiEventListener;->preferencesClickDisagreeToAllPurposes(Lio/didomi/sdk/events/PreferencesClickDisagreeToAllPurposesEvent;)V

    goto/16 :goto_1ff

    :cond_10e
    instance-of v2, p1, Lio/didomi/sdk/events/PreferencesClickResetAllPurposesEvent;

    if-eqz v2, :cond_11a

    move-object v2, p1

    check-cast v2, Lio/didomi/sdk/events/PreferencesClickResetAllPurposesEvent;

    invoke-interface {v1, v2}, Lio/didomi/sdk/functionalinterfaces/DidomiEventListener;->preferencesClickResetAllPurposes(Lio/didomi/sdk/events/PreferencesClickResetAllPurposesEvent;)V

    goto/16 :goto_1ff

    :cond_11a
    instance-of v2, p1, Lio/didomi/sdk/events/PreferencesClickPurposeAgreeEvent;

    if-eqz v2, :cond_126

    move-object v2, p1

    check-cast v2, Lio/didomi/sdk/events/PreferencesClickPurposeAgreeEvent;

    invoke-interface {v1, v2}, Lio/didomi/sdk/functionalinterfaces/DidomiEventListener;->preferencesClickPurposeAgree(Lio/didomi/sdk/events/PreferencesClickPurposeAgreeEvent;)V

    goto/16 :goto_1ff

    :cond_126
    instance-of v2, p1, Lio/didomi/sdk/events/PreferencesClickPurposeDisagreeEvent;

    if-eqz v2, :cond_132

    move-object v2, p1

    check-cast v2, Lio/didomi/sdk/events/PreferencesClickPurposeDisagreeEvent;

    invoke-interface {v1, v2}, Lio/didomi/sdk/functionalinterfaces/DidomiEventListener;->preferencesClickPurposeDisagree(Lio/didomi/sdk/events/PreferencesClickPurposeDisagreeEvent;)V

    goto/16 :goto_1ff

    :cond_132
    instance-of v2, p1, Lio/didomi/sdk/events/PreferencesClickCategoryAgreeEvent;

    if-eqz v2, :cond_13e

    move-object v2, p1

    check-cast v2, Lio/didomi/sdk/events/PreferencesClickCategoryAgreeEvent;

    invoke-interface {v1, v2}, Lio/didomi/sdk/functionalinterfaces/DidomiEventListener;->preferencesClickCategoryAgree(Lio/didomi/sdk/events/PreferencesClickCategoryAgreeEvent;)V

    goto/16 :goto_1ff

    :cond_13e
    instance-of v2, p1, Lio/didomi/sdk/events/PreferencesClickCategoryDisagreeEvent;

    if-eqz v2, :cond_14a

    move-object v2, p1

    check-cast v2, Lio/didomi/sdk/events/PreferencesClickCategoryDisagreeEvent;

    invoke-interface {v1, v2}, Lio/didomi/sdk/functionalinterfaces/DidomiEventListener;->preferencesClickCategoryDisagree(Lio/didomi/sdk/events/PreferencesClickCategoryDisagreeEvent;)V

    goto/16 :goto_1ff

    :cond_14a
    instance-of v2, p1, Lio/didomi/sdk/events/PreferencesClickSaveChoicesEvent;

    if-eqz v2, :cond_156

    move-object v2, p1

    check-cast v2, Lio/didomi/sdk/events/PreferencesClickSaveChoicesEvent;

    invoke-interface {v1, v2}, Lio/didomi/sdk/functionalinterfaces/DidomiEventListener;->preferencesClickSaveChoices(Lio/didomi/sdk/events/PreferencesClickSaveChoicesEvent;)V

    goto/16 :goto_1ff

    :cond_156
    instance-of v2, p1, Lio/didomi/sdk/events/PreferencesClickAgreeToAllVendorsEvent;

    if-eqz v2, :cond_162

    move-object v2, p1

    check-cast v2, Lio/didomi/sdk/events/PreferencesClickAgreeToAllVendorsEvent;

    invoke-interface {v1, v2}, Lio/didomi/sdk/functionalinterfaces/DidomiEventListener;->preferencesClickAgreeToAllVendors(Lio/didomi/sdk/events/PreferencesClickAgreeToAllVendorsEvent;)V

    goto/16 :goto_1ff

    :cond_162
    instance-of v2, p1, Lio/didomi/sdk/events/PreferencesClickDisagreeToAllVendorsEvent;

    if-eqz v2, :cond_16e

    move-object v2, p1

    check-cast v2, Lio/didomi/sdk/events/PreferencesClickDisagreeToAllVendorsEvent;

    invoke-interface {v1, v2}, Lio/didomi/sdk/functionalinterfaces/DidomiEventListener;->preferencesClickDisagreeToAllVendors(Lio/didomi/sdk/events/PreferencesClickDisagreeToAllVendorsEvent;)V

    goto/16 :goto_1ff

    :cond_16e
    instance-of v2, p1, Lio/didomi/sdk/events/PreferencesClickVendorAgreeEvent;

    if-eqz v2, :cond_17a

    move-object v2, p1

    check-cast v2, Lio/didomi/sdk/events/PreferencesClickVendorAgreeEvent;

    invoke-interface {v1, v2}, Lio/didomi/sdk/functionalinterfaces/DidomiEventListener;->preferencesClickVendorAgree(Lio/didomi/sdk/events/PreferencesClickVendorAgreeEvent;)V

    goto/16 :goto_1ff

    :cond_17a
    instance-of v2, p1, Lio/didomi/sdk/events/PreferencesClickVendorDisagreeEvent;

    if-eqz v2, :cond_186

    move-object v2, p1

    check-cast v2, Lio/didomi/sdk/events/PreferencesClickVendorDisagreeEvent;

    invoke-interface {v1, v2}, Lio/didomi/sdk/functionalinterfaces/DidomiEventListener;->preferencesClickVendorDisagree(Lio/didomi/sdk/events/PreferencesClickVendorDisagreeEvent;)V

    goto/16 :goto_1ff

    :cond_186
    instance-of v2, p1, Lio/didomi/sdk/events/PreferencesClickVendorSaveChoicesEvent;

    if-eqz v2, :cond_192

    move-object v2, p1

    check-cast v2, Lio/didomi/sdk/events/PreferencesClickVendorSaveChoicesEvent;

    invoke-interface {v1, v2}, Lio/didomi/sdk/functionalinterfaces/DidomiEventListener;->preferencesClickVendorSaveChoices(Lio/didomi/sdk/events/PreferencesClickVendorSaveChoicesEvent;)V

    goto/16 :goto_1ff

    :cond_192
    instance-of v2, p1, Lio/didomi/sdk/events/PreferencesClickSPIPurposeAgreeEvent;

    if-eqz v2, :cond_19d

    move-object v2, p1

    check-cast v2, Lio/didomi/sdk/events/PreferencesClickSPIPurposeAgreeEvent;

    invoke-interface {v1, v2}, Lio/didomi/sdk/functionalinterfaces/DidomiEventListener;->preferencesClickSPIPurposeAgree(Lio/didomi/sdk/events/PreferencesClickSPIPurposeAgreeEvent;)V

    goto :goto_1ff

    :cond_19d
    instance-of v2, p1, Lio/didomi/sdk/events/PreferencesClickSPIPurposeDisagreeEvent;

    if-eqz v2, :cond_1a8

    move-object v2, p1

    check-cast v2, Lio/didomi/sdk/events/PreferencesClickSPIPurposeDisagreeEvent;

    invoke-interface {v1, v2}, Lio/didomi/sdk/functionalinterfaces/DidomiEventListener;->preferencesClickSPIPurposeDisagree(Lio/didomi/sdk/events/PreferencesClickSPIPurposeDisagreeEvent;)V

    goto :goto_1ff

    :cond_1a8
    instance-of v2, p1, Lio/didomi/sdk/events/PreferencesClickSPICategoryAgreeEvent;

    if-eqz v2, :cond_1b3

    move-object v2, p1

    check-cast v2, Lio/didomi/sdk/events/PreferencesClickSPICategoryAgreeEvent;

    invoke-interface {v1, v2}, Lio/didomi/sdk/functionalinterfaces/DidomiEventListener;->preferencesClickSPICategoryAgree(Lio/didomi/sdk/events/PreferencesClickSPICategoryAgreeEvent;)V

    goto :goto_1ff

    :cond_1b3
    instance-of v2, p1, Lio/didomi/sdk/events/PreferencesClickSPICategoryDisagreeEvent;

    if-eqz v2, :cond_1be

    move-object v2, p1

    check-cast v2, Lio/didomi/sdk/events/PreferencesClickSPICategoryDisagreeEvent;

    invoke-interface {v1, v2}, Lio/didomi/sdk/functionalinterfaces/DidomiEventListener;->preferencesClickSPICategoryDisagree(Lio/didomi/sdk/events/PreferencesClickSPICategoryDisagreeEvent;)V

    goto :goto_1ff

    :cond_1be
    instance-of v2, p1, Lio/didomi/sdk/events/PreferencesClickSPIPurposeSaveChoicesEvent;

    if-eqz v2, :cond_1c9

    move-object v2, p1

    check-cast v2, Lio/didomi/sdk/events/PreferencesClickSPIPurposeSaveChoicesEvent;

    invoke-interface {v1, v2}, Lio/didomi/sdk/functionalinterfaces/DidomiEventListener;->preferencesClickSPIPurposeSaveChoices(Lio/didomi/sdk/events/PreferencesClickSPIPurposeSaveChoicesEvent;)V

    goto :goto_1ff

    :cond_1c9
    instance-of v2, p1, Lio/didomi/sdk/events/SyncDoneEvent;

    if-eqz v2, :cond_1d4

    move-object v2, p1

    check-cast v2, Lio/didomi/sdk/events/SyncDoneEvent;

    invoke-interface {v1, v2}, Lio/didomi/sdk/functionalinterfaces/DidomiEventListener;->syncDone(Lio/didomi/sdk/events/SyncDoneEvent;)V

    goto :goto_1ff

    :cond_1d4
    instance-of v2, p1, Lio/didomi/sdk/events/SyncReadyEvent;

    if-eqz v2, :cond_1df

    move-object v2, p1

    check-cast v2, Lio/didomi/sdk/events/SyncReadyEvent;

    invoke-interface {v1, v2}, Lio/didomi/sdk/functionalinterfaces/DidomiEventListener;->syncReady(Lio/didomi/sdk/events/SyncReadyEvent;)V

    goto :goto_1ff

    :cond_1df
    instance-of v2, p1, Lio/didomi/sdk/events/SyncErrorEvent;

    if-eqz v2, :cond_1ea

    move-object v2, p1

    check-cast v2, Lio/didomi/sdk/events/SyncErrorEvent;

    invoke-interface {v1, v2}, Lio/didomi/sdk/functionalinterfaces/DidomiEventListener;->syncError(Lio/didomi/sdk/events/SyncErrorEvent;)V

    goto :goto_1ff

    :cond_1ea
    instance-of v2, p1, Lio/didomi/sdk/events/LanguageUpdatedEvent;

    if-eqz v2, :cond_1f5

    move-object v2, p1

    check-cast v2, Lio/didomi/sdk/events/LanguageUpdatedEvent;

    invoke-interface {v1, v2}, Lio/didomi/sdk/functionalinterfaces/DidomiEventListener;->languageUpdated(Lio/didomi/sdk/events/LanguageUpdatedEvent;)V

    goto :goto_1ff

    :cond_1f5
    instance-of v2, p1, Lio/didomi/sdk/events/LanguageUpdateFailedEvent;

    if-eqz v2, :cond_1ff

    move-object v2, p1

    check-cast v2, Lio/didomi/sdk/events/LanguageUpdateFailedEvent;

    invoke-interface {v1, v2}, Lio/didomi/sdk/functionalinterfaces/DidomiEventListener;->languageUpdateFailed(Lio/didomi/sdk/events/LanguageUpdateFailedEvent;)V

    :cond_1ff
    :goto_1ff
    invoke-virtual {p0, p1}, Lio/didomi/sdk/M2;->a(Lio/didomi/sdk/events/Event;)Z

    move-result v2

    if-eqz v2, :cond_12

    instance-of v2, v1, Lio/didomi/sdk/events/InitializationEventListener;

    if-eqz v2, :cond_12

    invoke-virtual {p0, v1}, Lio/didomi/sdk/M2;->b(Lio/didomi/sdk/functionalinterfaces/DidomiEventListener;)Z

    goto/16 :goto_12

    :cond_20e
    return-void
.end method

.method private static final a(Lkotlin/jvm/b/l;Ljava/lang/Object;)Z
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private b(Lio/didomi/sdk/events/Event;)Z
    .registers 4

    instance-of v0, p1, Lio/didomi/sdk/events/ConsentChangedEvent;

    const/4 v1, 0x1

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_9

    :cond_7
    instance-of v0, p1, Lio/didomi/sdk/events/ErrorEvent;

    :goto_9
    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_f

    :cond_d
    instance-of v0, p1, Lio/didomi/sdk/events/ReadyEvent;

    :goto_f
    if-eqz v0, :cond_13

    const/4 v0, 0x1

    goto :goto_15

    :cond_13
    instance-of v0, p1, Lio/didomi/sdk/events/HideNoticeEvent;

    :goto_15
    if-eqz v0, :cond_19

    const/4 v0, 0x1

    goto :goto_1b

    :cond_19
    instance-of v0, p1, Lio/didomi/sdk/events/ShowNoticeEvent;

    :goto_1b
    if-eqz v0, :cond_1f

    const/4 v0, 0x1

    goto :goto_21

    :cond_1f
    instance-of v0, p1, Lio/didomi/sdk/events/NoticeClickAgreeEvent;

    :goto_21
    if-eqz v0, :cond_25

    const/4 v0, 0x1

    goto :goto_27

    :cond_25
    instance-of v0, p1, Lio/didomi/sdk/events/NoticeClickDisagreeEvent;

    :goto_27
    if-eqz v0, :cond_2b

    const/4 v0, 0x1

    goto :goto_2d

    :cond_2b
    instance-of v0, p1, Lio/didomi/sdk/events/NoticeClickViewVendorsEvent;

    :goto_2d
    if-eqz v0, :cond_31

    const/4 v0, 0x1

    goto :goto_33

    :cond_31
    instance-of v0, p1, Lio/didomi/sdk/events/NoticeClickViewSPIPurposesEvent;

    :goto_33
    if-eqz v0, :cond_37

    const/4 v0, 0x1

    goto :goto_39

    :cond_37
    instance-of v0, p1, Lio/didomi/sdk/events/NoticeClickMoreInfoEvent;

    :goto_39
    if-eqz v0, :cond_3d

    const/4 v0, 0x1

    goto :goto_3f

    :cond_3d
    instance-of v0, p1, Lio/didomi/sdk/events/NoticeClickPrivacyPolicyEvent;

    :goto_3f
    if-eqz v0, :cond_43

    const/4 v0, 0x1

    goto :goto_45

    :cond_43
    instance-of v0, p1, Lio/didomi/sdk/events/HidePreferencesEvent;

    :goto_45
    if-eqz v0, :cond_49

    const/4 v0, 0x1

    goto :goto_4b

    :cond_49
    instance-of v0, p1, Lio/didomi/sdk/events/ShowPreferencesEvent;

    :goto_4b
    if-eqz v0, :cond_4f

    const/4 v0, 0x1

    goto :goto_51

    :cond_4f
    instance-of v0, p1, Lio/didomi/sdk/events/PreferencesClickViewPurposesEvent;

    :goto_51
    if-eqz v0, :cond_55

    const/4 v0, 0x1

    goto :goto_57

    :cond_55
    instance-of v0, p1, Lio/didomi/sdk/events/PreferencesClickViewVendorsEvent;

    :goto_57
    if-eqz v0, :cond_5b

    const/4 v0, 0x1

    goto :goto_5d

    :cond_5b
    instance-of v0, p1, Lio/didomi/sdk/events/PreferencesClickViewSPIPurposesEvent;

    :goto_5d
    if-eqz v0, :cond_61

    const/4 v0, 0x1

    goto :goto_63

    :cond_61
    instance-of v0, p1, Lio/didomi/sdk/events/PreferencesClickAgreeToAllEvent;

    :goto_63
    if-eqz v0, :cond_67

    const/4 v0, 0x1

    goto :goto_69

    :cond_67
    instance-of v0, p1, Lio/didomi/sdk/events/PreferencesClickDisagreeToAllEvent;

    :goto_69
    if-eqz v0, :cond_6d

    const/4 v0, 0x1

    goto :goto_6f

    :cond_6d
    instance-of v0, p1, Lio/didomi/sdk/events/PreferencesClickAgreeToAllPurposesEvent;

    :goto_6f
    if-eqz v0, :cond_73

    const/4 v0, 0x1

    goto :goto_75

    :cond_73
    instance-of v0, p1, Lio/didomi/sdk/events/PreferencesClickDisagreeToAllPurposesEvent;

    :goto_75
    if-eqz v0, :cond_79

    const/4 v0, 0x1

    goto :goto_7b

    :cond_79
    instance-of v0, p1, Lio/didomi/sdk/events/PreferencesClickResetAllPurposesEvent;

    :goto_7b
    if-eqz v0, :cond_7f

    const/4 v0, 0x1

    goto :goto_81

    :cond_7f
    instance-of v0, p1, Lio/didomi/sdk/events/PreferencesClickPurposeAgreeEvent;

    :goto_81
    if-eqz v0, :cond_85

    const/4 v0, 0x1

    goto :goto_87

    :cond_85
    instance-of v0, p1, Lio/didomi/sdk/events/PreferencesClickPurposeDisagreeEvent;

    :goto_87
    if-eqz v0, :cond_8b

    const/4 v0, 0x1

    goto :goto_8d

    :cond_8b
    instance-of v0, p1, Lio/didomi/sdk/events/PreferencesClickCategoryAgreeEvent;

    :goto_8d
    if-eqz v0, :cond_91

    const/4 v0, 0x1

    goto :goto_93

    :cond_91
    instance-of v0, p1, Lio/didomi/sdk/events/PreferencesClickCategoryDisagreeEvent;

    :goto_93
    if-eqz v0, :cond_97

    const/4 v0, 0x1

    goto :goto_99

    :cond_97
    instance-of v0, p1, Lio/didomi/sdk/events/PreferencesClickSaveChoicesEvent;

    :goto_99
    if-eqz v0, :cond_9d

    const/4 v0, 0x1

    goto :goto_9f

    :cond_9d
    instance-of v0, p1, Lio/didomi/sdk/events/PreferencesClickAgreeToAllVendorsEvent;

    :goto_9f
    if-eqz v0, :cond_a3

    const/4 v0, 0x1

    goto :goto_a5

    :cond_a3
    instance-of v0, p1, Lio/didomi/sdk/events/PreferencesClickDisagreeToAllVendorsEvent;

    :goto_a5
    if-eqz v0, :cond_a9

    const/4 v0, 0x1

    goto :goto_ab

    :cond_a9
    instance-of v0, p1, Lio/didomi/sdk/events/PreferencesClickVendorAgreeEvent;

    :goto_ab
    if-eqz v0, :cond_af

    const/4 v0, 0x1

    goto :goto_b1

    :cond_af
    instance-of v0, p1, Lio/didomi/sdk/events/PreferencesClickVendorDisagreeEvent;

    :goto_b1
    if-eqz v0, :cond_b5

    const/4 v0, 0x1

    goto :goto_b7

    :cond_b5
    instance-of v0, p1, Lio/didomi/sdk/events/PreferencesClickVendorSaveChoicesEvent;

    :goto_b7
    if-eqz v0, :cond_bb

    const/4 v0, 0x1

    goto :goto_bd

    :cond_bb
    instance-of v0, p1, Lio/didomi/sdk/events/PreferencesClickSPIPurposeAgreeEvent;

    :goto_bd
    if-eqz v0, :cond_c1

    const/4 v0, 0x1

    goto :goto_c3

    :cond_c1
    instance-of v0, p1, Lio/didomi/sdk/events/PreferencesClickSPIPurposeDisagreeEvent;

    :goto_c3
    if-eqz v0, :cond_c7

    const/4 v0, 0x1

    goto :goto_c9

    :cond_c7
    instance-of v0, p1, Lio/didomi/sdk/events/PreferencesClickSPICategoryAgreeEvent;

    :goto_c9
    if-eqz v0, :cond_cd

    const/4 v0, 0x1

    goto :goto_cf

    :cond_cd
    instance-of v0, p1, Lio/didomi/sdk/events/PreferencesClickSPICategoryDisagreeEvent;

    :goto_cf
    if-eqz v0, :cond_d3

    const/4 v0, 0x1

    goto :goto_d5

    :cond_d3
    instance-of v0, p1, Lio/didomi/sdk/events/PreferencesClickSPIPurposeSaveChoicesEvent;

    :goto_d5
    if-eqz v0, :cond_d9

    const/4 v0, 0x1

    goto :goto_db

    :cond_d9
    instance-of v0, p1, Lio/didomi/sdk/events/SyncDoneEvent;

    :goto_db
    if-eqz v0, :cond_df

    const/4 v0, 0x1

    goto :goto_e1

    :cond_df
    instance-of v0, p1, Lio/didomi/sdk/events/SyncReadyEvent;

    :goto_e1
    if-eqz v0, :cond_e5

    const/4 v0, 0x1

    goto :goto_e7

    :cond_e5
    instance-of v0, p1, Lio/didomi/sdk/events/SyncErrorEvent;

    :goto_e7
    if-eqz v0, :cond_eb

    const/4 v0, 0x1

    goto :goto_ed

    :cond_eb
    instance-of v0, p1, Lio/didomi/sdk/events/LanguageUpdatedEvent;

    :goto_ed
    if-eqz v0, :cond_f1

    const/4 p1, 0x1

    goto :goto_f3

    :cond_f1
    instance-of p1, p1, Lio/didomi/sdk/events/LanguageUpdateFailedEvent;

    :goto_f3
    xor-int/2addr p1, v1

    return p1
.end method

.method public static synthetic d(Lio/didomi/sdk/M2;Lio/didomi/sdk/events/Event;)V
    .registers 2

    invoke-static {p0, p1}, Lio/didomi/sdk/M2;->a(Lio/didomi/sdk/M2;Lio/didomi/sdk/events/Event;)V

    return-void
.end method

.method public static synthetic e(Lkotlin/jvm/b/l;Ljava/lang/Object;)Z
    .registers 2

    invoke-static {p0, p1}, Lio/didomi/sdk/M2;->a(Lkotlin/jvm/b/l;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public a()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lio/didomi/sdk/functionalinterfaces/DidomiEventListener;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/M2;->b:Ljava/util/Set;

    return-object v0
.end method

.method public a(Lio/didomi/sdk/models/CurrentUserStatus;)V
    .registers 7

    const-string v0, "currentUserStatus"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/didomi/sdk/M2;->b()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/didomi/sdk/X8;

    invoke-virtual {p1}, Lio/didomi/sdk/models/CurrentUserStatus;->getVendors()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1}, Lio/didomi/sdk/X8;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/didomi/sdk/models/CurrentUserStatus$VendorStatus;

    if-nez v2, :cond_2a

    goto :goto_d

    :cond_2a
    invoke-virtual {v2}, Lio/didomi/sdk/models/CurrentUserStatus$VendorStatus;->getEnabled()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1}, Lio/didomi/sdk/X8;->a()Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    invoke-virtual {v1}, Lio/didomi/sdk/X8;->c()Lio/didomi/sdk/functionalinterfaces/DidomiVendorStatusListener;

    move-result-object v3

    invoke-interface {v3, v2}, Lio/didomi/sdk/functionalinterfaces/DidomiVendorStatusListener;->onVendorStatusChanged(Lio/didomi/sdk/models/CurrentUserStatus$VendorStatus;)V

    invoke-virtual {v2}, Lio/didomi/sdk/models/CurrentUserStatus$VendorStatus;->getEnabled()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/didomi/sdk/X8;->a(Ljava/lang/Boolean;)V

    goto :goto_d

    :cond_4f
    return-void
.end method

.method protected a(Lio/didomi/sdk/events/Event;)Z
    .registers 3

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lio/didomi/sdk/events/ReadyEvent;

    if-nez v0, :cond_10

    instance-of p1, p1, Lio/didomi/sdk/events/ErrorEvent;

    if-eqz p1, :cond_e

    goto :goto_10

    :cond_e
    const/4 p1, 0x0

    goto :goto_11

    :cond_10
    :goto_10
    const/4 p1, 0x1

    :goto_11
    return p1
.end method

.method public a(Lio/didomi/sdk/functionalinterfaces/DidomiEventListener;)Z
    .registers 3

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/didomi/sdk/M2;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public a(Ljava/lang/String;)Z
    .registers 6

    const-string v0, "vendorId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1e

    invoke-virtual {p0}, Lio/didomi/sdk/M2;->b()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lio/didomi/sdk/M2$a;

    invoke-direct {v1, p1}, Lio/didomi/sdk/M2$a;-><init>(Ljava/lang/String;)V

    new-instance p1, Lio/didomi/sdk/wb;

    invoke-direct {p1, v1}, Lio/didomi/sdk/wb;-><init>(Lkotlin/jvm/b/l;)V

    invoke-interface {v0, p1}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    move-result p1

    goto :goto_4a

    :cond_1e
    const/4 v0, 0x0

    invoke-virtual {p0}, Lio/didomi/sdk/M2;->b()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_27
    :goto_27
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_49

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/didomi/sdk/X8;

    invoke-virtual {v2}, Lio/didomi/sdk/X8;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-virtual {p0}, Lio/didomi/sdk/M2;->b()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    const/4 v0, 0x1

    goto :goto_27

    :cond_49
    move p1, v0

    :goto_4a
    return p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/Boolean;Lio/didomi/sdk/functionalinterfaces/DidomiVendorStatusListener;)Z
    .registers 6

    const-string v0, "vendorId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/didomi/sdk/M2;->b()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lio/didomi/sdk/X8;

    invoke-direct {v1, p1, p2, p3}, Lio/didomi/sdk/X8;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Lio/didomi/sdk/functionalinterfaces/DidomiVendorStatusListener;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public b()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lio/didomi/sdk/X8;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/M2;->c:Ljava/util/Set;

    return-object v0
.end method

.method public b(Lio/didomi/sdk/functionalinterfaces/DidomiEventListener;)Z
    .registers 3

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/didomi/sdk/M2;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public c(Lio/didomi/sdk/events/Event;)V
    .registers 4

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lio/didomi/sdk/M2;->b(Lio/didomi/sdk/events/Event;)Z

    move-result v0

    if-eqz v0, :cond_2a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to trigger event of unknown type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1}, Lio/didomi/sdk/Log;->e$default(Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    return-void

    :cond_2a
    iget-object v0, p0, Lio/didomi/sdk/M2;->a:Landroid/os/Handler;

    new-instance v1, Lio/didomi/sdk/vb;

    invoke-direct {v1, p0, p1}, Lio/didomi/sdk/vb;-><init>(Lio/didomi/sdk/M2;Lio/didomi/sdk/events/Event;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
