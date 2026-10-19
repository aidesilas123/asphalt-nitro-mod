###### Class com.gameloft.didomiwrapper.DidomiWrapperEventListener (com.gameloft.didomiwrapper.DidomiWrapperEventListener)
.class public Lcom/gameloft/didomiwrapper/DidomiWrapperEventListener;
.super Lio/didomi/sdk/events/EventListener;
.source "DidomiWrapperEventListener.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lio/didomi/sdk/events/EventListener;-><init>()V

    return-void
.end method

.method public static native NativeOnConsentChanged()V
.end method

.method public static native NativeOnError()V
.end method

.method public static native NativeOnHideNotice()V
.end method

.method public static native NativeOnHidePreferences()V
.end method

.method public static native NativeOnNoticeClickAgree()V
.end method

.method public static native NativeOnNoticeClickDisagree()V
.end method

.method public static native NativeOnNoticeClickMoreInfo()V
.end method

.method public static native NativeOnPreferencesClickAgreeToAll()V
.end method

.method public static native NativeOnPreferencesClickDisagreeToAll()V
.end method

.method public static native NativeOnPreferencesClickSaveChoices()V
.end method

.method public static native NativeOnReady()V
.end method

.method public static native NativeOnShowNotice()V
.end method

.method public static native NativeOnShowPreferences()V
.end method


# virtual methods
.method public consentChanged(Lio/didomi/sdk/events/ConsentChangedEvent;)V
    .registers 2
    .param p1    # Lio/didomi/sdk/events/ConsentChangedEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    :try_start_0
    invoke-static {}, Lcom/gameloft/didomiwrapper/DidomiWrapperEventListener;->NativeOnConsentChanged()V
    :try_end_3
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method

.method public hideNotice(Lio/didomi/sdk/events/HideNoticeEvent;)V
    .registers 2
    .param p1    # Lio/didomi/sdk/events/HideNoticeEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    :try_start_0
    invoke-static {}, Lcom/gameloft/didomiwrapper/DidomiWrapperEventListener;->NativeOnHideNotice()V
    :try_end_3
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method

.method public hidePreferences(Lio/didomi/sdk/events/HidePreferencesEvent;)V
    .registers 2
    .param p1    # Lio/didomi/sdk/events/HidePreferencesEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    :try_start_0
    invoke-static {}, Lcom/gameloft/didomiwrapper/DidomiWrapperEventListener;->NativeOnHidePreferences()V
    :try_end_3
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method

.method public noticeClickAgree(Lio/didomi/sdk/events/NoticeClickAgreeEvent;)V
    .registers 2
    .param p1    # Lio/didomi/sdk/events/NoticeClickAgreeEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    :try_start_0
    invoke-static {}, Lcom/gameloft/didomiwrapper/DidomiWrapperEventListener;->NativeOnNoticeClickAgree()V
    :try_end_3
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method

.method public noticeClickDisagree(Lio/didomi/sdk/events/NoticeClickDisagreeEvent;)V
    .registers 2
    .param p1    # Lio/didomi/sdk/events/NoticeClickDisagreeEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    :try_start_0
    invoke-static {}, Lcom/gameloft/didomiwrapper/DidomiWrapperEventListener;->NativeOnNoticeClickDisagree()V
    :try_end_3
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method

.method public noticeClickMoreInfo(Lio/didomi/sdk/events/NoticeClickMoreInfoEvent;)V
    .registers 2
    .param p1    # Lio/didomi/sdk/events/NoticeClickMoreInfoEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    :try_start_0
    invoke-static {}, Lcom/gameloft/didomiwrapper/DidomiWrapperEventListener;->NativeOnNoticeClickMoreInfo()V
    :try_end_3
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method

.method public preferencesClickAgreeToAll(Lio/didomi/sdk/events/PreferencesClickAgreeToAllEvent;)V
    .registers 2
    .param p1    # Lio/didomi/sdk/events/PreferencesClickAgreeToAllEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    :try_start_0
    invoke-static {}, Lcom/gameloft/didomiwrapper/DidomiWrapperEventListener;->NativeOnPreferencesClickAgreeToAll()V
    :try_end_3
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method

.method public preferencesClickDisagreeToAll(Lio/didomi/sdk/events/PreferencesClickDisagreeToAllEvent;)V
    .registers 2
    .param p1    # Lio/didomi/sdk/events/PreferencesClickDisagreeToAllEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    :try_start_0
    invoke-static {}, Lcom/gameloft/didomiwrapper/DidomiWrapperEventListener;->NativeOnPreferencesClickDisagreeToAll()V
    :try_end_3
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method

.method public preferencesClickPurposeAgree(Lio/didomi/sdk/events/PreferencesClickPurposeAgreeEvent;)V
    .registers 2
    .param p1    # Lio/didomi/sdk/events/PreferencesClickPurposeAgreeEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public preferencesClickPurposeDisagree(Lio/didomi/sdk/events/PreferencesClickPurposeDisagreeEvent;)V
    .registers 2
    .param p1    # Lio/didomi/sdk/events/PreferencesClickPurposeDisagreeEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public preferencesClickSaveChoices(Lio/didomi/sdk/events/PreferencesClickSaveChoicesEvent;)V
    .registers 2
    .param p1    # Lio/didomi/sdk/events/PreferencesClickSaveChoicesEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    :try_start_0
    invoke-static {}, Lcom/gameloft/didomiwrapper/DidomiWrapperEventListener;->NativeOnPreferencesClickSaveChoices()V
    :try_end_3
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method

.method public preferencesClickVendorAgree(Lio/didomi/sdk/events/PreferencesClickVendorAgreeEvent;)V
    .registers 2
    .param p1    # Lio/didomi/sdk/events/PreferencesClickVendorAgreeEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public preferencesClickVendorDisagree(Lio/didomi/sdk/events/PreferencesClickVendorDisagreeEvent;)V
    .registers 2
    .param p1    # Lio/didomi/sdk/events/PreferencesClickVendorDisagreeEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public preferencesClickVendorSaveChoices(Lio/didomi/sdk/events/PreferencesClickVendorSaveChoicesEvent;)V
    .registers 2
    .param p1    # Lio/didomi/sdk/events/PreferencesClickVendorSaveChoicesEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public preferencesClickViewVendors(Lio/didomi/sdk/events/PreferencesClickViewVendorsEvent;)V
    .registers 2
    .param p1    # Lio/didomi/sdk/events/PreferencesClickViewVendorsEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public showNotice(Lio/didomi/sdk/events/ShowNoticeEvent;)V
    .registers 2
    .param p1    # Lio/didomi/sdk/events/ShowNoticeEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    :try_start_0
    invoke-static {}, Lcom/gameloft/didomiwrapper/DidomiWrapperEventListener;->NativeOnShowNotice()V
    :try_end_3
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method

.method public showPreferences(Lio/didomi/sdk/events/ShowPreferencesEvent;)V
    .registers 2
    .param p1    # Lio/didomi/sdk/events/ShowPreferencesEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    :try_start_0
    invoke-static {}, Lcom/gameloft/didomiwrapper/DidomiWrapperEventListener;->NativeOnShowPreferences()V
    :try_end_3
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method
