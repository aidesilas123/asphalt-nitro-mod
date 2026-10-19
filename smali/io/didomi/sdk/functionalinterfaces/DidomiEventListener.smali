###### Class io.didomi.drawable.functionalinterfaces.DidomiEventListener (io.didomi.sdk.functionalinterfaces.DidomiEventListener)
.class public interface abstract Lio/didomi/sdk/functionalinterfaces/DidomiEventListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0086\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008g\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\'J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0007H\'J\u0010\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\tH\'J\u0010\u0010\n\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u000bH\'J\u0010\u0010\u000c\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\rH\'J\u0010\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u000fH\'J\u0010\u0010\u0010\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0011H\'J\u0010\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0013H\'J\u0010\u0010\u0014\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0015H\'J\u0010\u0010\u0016\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0017H\'J\u0010\u0010\u0018\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0019H\'J\u0010\u0010\u001a\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u001bH\'J\u0010\u0010\u001c\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u001dH\'J\u0010\u0010\u001e\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u001fH\'J\u0010\u0010 \u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020!H\'J\u0010\u0010\"\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020#H\'J\u0010\u0010$\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020%H\'J\u0010\u0010&\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\'H\'J\u0010\u0010(\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020)H\'J\u0010\u0010*\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020+H\'J\u0010\u0010,\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020-H\'J\u0010\u0010.\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020/H\'J\u0010\u00100\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u000201H\'J\u0010\u00102\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u000203H\'J\u0010\u00104\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u000205H\'J\u0010\u00106\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u000207H\'J\u0010\u00108\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u000209H\'J\u0010\u0010:\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020;H\'J\u0010\u0010<\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020=H\'J\u0010\u0010>\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020?H\'J\u0010\u0010@\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020AH\'J\u0010\u0010B\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020CH\'J\u0010\u0010D\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020EH\'J\u0010\u0010F\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020GH\'J\u0010\u0010H\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020IH\'J\u0010\u0010J\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020KH\'J\u0010\u0010L\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020MH\'J\u0010\u0010N\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020OH\'J\u0010\u0010P\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020QH\'J\u0010\u0010R\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020SH\'J\u0010\u0010T\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020UH\'\u00a8\u0006V"
    }
    d2 = {
        "Lio/didomi/sdk/functionalinterfaces/DidomiEventListener;",
        "",
        "consentChanged",
        "",
        "event",
        "Lio/didomi/sdk/events/ConsentChangedEvent;",
        "error",
        "Lio/didomi/sdk/events/ErrorEvent;",
        "hideNotice",
        "Lio/didomi/sdk/events/HideNoticeEvent;",
        "hidePreferences",
        "Lio/didomi/sdk/events/HidePreferencesEvent;",
        "languageUpdateFailed",
        "Lio/didomi/sdk/events/LanguageUpdateFailedEvent;",
        "languageUpdated",
        "Lio/didomi/sdk/events/LanguageUpdatedEvent;",
        "noticeClickAgree",
        "Lio/didomi/sdk/events/NoticeClickAgreeEvent;",
        "noticeClickDisagree",
        "Lio/didomi/sdk/events/NoticeClickDisagreeEvent;",
        "noticeClickMoreInfo",
        "Lio/didomi/sdk/events/NoticeClickMoreInfoEvent;",
        "noticeClickPrivacyPolicy",
        "Lio/didomi/sdk/events/NoticeClickPrivacyPolicyEvent;",
        "noticeClickViewSPIPurposes",
        "Lio/didomi/sdk/events/NoticeClickViewSPIPurposesEvent;",
        "noticeClickViewVendors",
        "Lio/didomi/sdk/events/NoticeClickViewVendorsEvent;",
        "preferencesClickAgreeToAll",
        "Lio/didomi/sdk/events/PreferencesClickAgreeToAllEvent;",
        "preferencesClickAgreeToAllPurposes",
        "Lio/didomi/sdk/events/PreferencesClickAgreeToAllPurposesEvent;",
        "preferencesClickAgreeToAllVendors",
        "Lio/didomi/sdk/events/PreferencesClickAgreeToAllVendorsEvent;",
        "preferencesClickCategoryAgree",
        "Lio/didomi/sdk/events/PreferencesClickCategoryAgreeEvent;",
        "preferencesClickCategoryDisagree",
        "Lio/didomi/sdk/events/PreferencesClickCategoryDisagreeEvent;",
        "preferencesClickDisagreeToAll",
        "Lio/didomi/sdk/events/PreferencesClickDisagreeToAllEvent;",
        "preferencesClickDisagreeToAllPurposes",
        "Lio/didomi/sdk/events/PreferencesClickDisagreeToAllPurposesEvent;",
        "preferencesClickDisagreeToAllVendors",
        "Lio/didomi/sdk/events/PreferencesClickDisagreeToAllVendorsEvent;",
        "preferencesClickPurposeAgree",
        "Lio/didomi/sdk/events/PreferencesClickPurposeAgreeEvent;",
        "preferencesClickPurposeDisagree",
        "Lio/didomi/sdk/events/PreferencesClickPurposeDisagreeEvent;",
        "preferencesClickResetAllPurposes",
        "Lio/didomi/sdk/events/PreferencesClickResetAllPurposesEvent;",
        "preferencesClickSPICategoryAgree",
        "Lio/didomi/sdk/events/PreferencesClickSPICategoryAgreeEvent;",
        "preferencesClickSPICategoryDisagree",
        "Lio/didomi/sdk/events/PreferencesClickSPICategoryDisagreeEvent;",
        "preferencesClickSPIPurposeAgree",
        "Lio/didomi/sdk/events/PreferencesClickSPIPurposeAgreeEvent;",
        "preferencesClickSPIPurposeDisagree",
        "Lio/didomi/sdk/events/PreferencesClickSPIPurposeDisagreeEvent;",
        "preferencesClickSPIPurposeSaveChoices",
        "Lio/didomi/sdk/events/PreferencesClickSPIPurposeSaveChoicesEvent;",
        "preferencesClickSaveChoices",
        "Lio/didomi/sdk/events/PreferencesClickSaveChoicesEvent;",
        "preferencesClickVendorAgree",
        "Lio/didomi/sdk/events/PreferencesClickVendorAgreeEvent;",
        "preferencesClickVendorDisagree",
        "Lio/didomi/sdk/events/PreferencesClickVendorDisagreeEvent;",
        "preferencesClickVendorSaveChoices",
        "Lio/didomi/sdk/events/PreferencesClickVendorSaveChoicesEvent;",
        "preferencesClickViewPurposes",
        "Lio/didomi/sdk/events/PreferencesClickViewPurposesEvent;",
        "preferencesClickViewSPIPurposes",
        "Lio/didomi/sdk/events/PreferencesClickViewSPIPurposesEvent;",
        "preferencesClickViewVendors",
        "Lio/didomi/sdk/events/PreferencesClickViewVendorsEvent;",
        "ready",
        "Lio/didomi/sdk/events/ReadyEvent;",
        "showNotice",
        "Lio/didomi/sdk/events/ShowNoticeEvent;",
        "showPreferences",
        "Lio/didomi/sdk/events/ShowPreferencesEvent;",
        "syncDone",
        "Lio/didomi/sdk/events/SyncDoneEvent;",
        "syncError",
        "Lio/didomi/sdk/events/SyncErrorEvent;",
        "syncReady",
        "Lio/didomi/sdk/events/SyncReadyEvent;",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract consentChanged(Lio/didomi/sdk/events/ConsentChangedEvent;)V
    .annotation build Landroidx/annotation/UiThread;
    .end annotation
.end method

.method public abstract error(Lio/didomi/sdk/events/ErrorEvent;)V
    .annotation build Landroidx/annotation/UiThread;
    .end annotation
.end method

.method public abstract hideNotice(Lio/didomi/sdk/events/HideNoticeEvent;)V
    .annotation build Landroidx/annotation/UiThread;
    .end annotation
.end method

.method public abstract hidePreferences(Lio/didomi/sdk/events/HidePreferencesEvent;)V
    .annotation build Landroidx/annotation/UiThread;
    .end annotation
.end method

.method public abstract languageUpdateFailed(Lio/didomi/sdk/events/LanguageUpdateFailedEvent;)V
    .annotation build Landroidx/annotation/UiThread;
    .end annotation
.end method

.method public abstract languageUpdated(Lio/didomi/sdk/events/LanguageUpdatedEvent;)V
    .annotation build Landroidx/annotation/UiThread;
    .end annotation
.end method

.method public abstract noticeClickAgree(Lio/didomi/sdk/events/NoticeClickAgreeEvent;)V
    .annotation build Landroidx/annotation/UiThread;
    .end annotation
.end method

.method public abstract noticeClickDisagree(Lio/didomi/sdk/events/NoticeClickDisagreeEvent;)V
    .annotation build Landroidx/annotation/UiThread;
    .end annotation
.end method

.method public abstract noticeClickMoreInfo(Lio/didomi/sdk/events/NoticeClickMoreInfoEvent;)V
    .annotation build Landroidx/annotation/UiThread;
    .end annotation
.end method

.method public abstract noticeClickPrivacyPolicy(Lio/didomi/sdk/events/NoticeClickPrivacyPolicyEvent;)V
    .annotation build Landroidx/annotation/UiThread;
    .end annotation
.end method

.method public abstract noticeClickViewSPIPurposes(Lio/didomi/sdk/events/NoticeClickViewSPIPurposesEvent;)V
    .annotation build Landroidx/annotation/UiThread;
    .end annotation
.end method

.method public abstract noticeClickViewVendors(Lio/didomi/sdk/events/NoticeClickViewVendorsEvent;)V
    .annotation build Landroidx/annotation/UiThread;
    .end annotation
.end method

.method public abstract preferencesClickAgreeToAll(Lio/didomi/sdk/events/PreferencesClickAgreeToAllEvent;)V
    .annotation build Landroidx/annotation/UiThread;
    .end annotation
.end method

.method public abstract preferencesClickAgreeToAllPurposes(Lio/didomi/sdk/events/PreferencesClickAgreeToAllPurposesEvent;)V
    .annotation build Landroidx/annotation/UiThread;
    .end annotation
.end method

.method public abstract preferencesClickAgreeToAllVendors(Lio/didomi/sdk/events/PreferencesClickAgreeToAllVendorsEvent;)V
    .annotation build Landroidx/annotation/UiThread;
    .end annotation
.end method

.method public abstract preferencesClickCategoryAgree(Lio/didomi/sdk/events/PreferencesClickCategoryAgreeEvent;)V
    .annotation build Landroidx/annotation/UiThread;
    .end annotation
.end method

.method public abstract preferencesClickCategoryDisagree(Lio/didomi/sdk/events/PreferencesClickCategoryDisagreeEvent;)V
    .annotation build Landroidx/annotation/UiThread;
    .end annotation
.end method

.method public abstract preferencesClickDisagreeToAll(Lio/didomi/sdk/events/PreferencesClickDisagreeToAllEvent;)V
    .annotation build Landroidx/annotation/UiThread;
    .end annotation
.end method

.method public abstract preferencesClickDisagreeToAllPurposes(Lio/didomi/sdk/events/PreferencesClickDisagreeToAllPurposesEvent;)V
    .annotation build Landroidx/annotation/UiThread;
    .end annotation
.end method

.method public abstract preferencesClickDisagreeToAllVendors(Lio/didomi/sdk/events/PreferencesClickDisagreeToAllVendorsEvent;)V
    .annotation build Landroidx/annotation/UiThread;
    .end annotation
.end method

.method public abstract preferencesClickPurposeAgree(Lio/didomi/sdk/events/PreferencesClickPurposeAgreeEvent;)V
    .annotation build Landroidx/annotation/UiThread;
    .end annotation
.end method

.method public abstract preferencesClickPurposeDisagree(Lio/didomi/sdk/events/PreferencesClickPurposeDisagreeEvent;)V
    .annotation build Landroidx/annotation/UiThread;
    .end annotation
.end method

.method public abstract preferencesClickResetAllPurposes(Lio/didomi/sdk/events/PreferencesClickResetAllPurposesEvent;)V
    .annotation build Landroidx/annotation/UiThread;
    .end annotation
.end method

.method public abstract preferencesClickSPICategoryAgree(Lio/didomi/sdk/events/PreferencesClickSPICategoryAgreeEvent;)V
    .annotation build Landroidx/annotation/UiThread;
    .end annotation
.end method

.method public abstract preferencesClickSPICategoryDisagree(Lio/didomi/sdk/events/PreferencesClickSPICategoryDisagreeEvent;)V
    .annotation build Landroidx/annotation/UiThread;
    .end annotation
.end method

.method public abstract preferencesClickSPIPurposeAgree(Lio/didomi/sdk/events/PreferencesClickSPIPurposeAgreeEvent;)V
    .annotation build Landroidx/annotation/UiThread;
    .end annotation
.end method

.method public abstract preferencesClickSPIPurposeDisagree(Lio/didomi/sdk/events/PreferencesClickSPIPurposeDisagreeEvent;)V
    .annotation build Landroidx/annotation/UiThread;
    .end annotation
.end method

.method public abstract preferencesClickSPIPurposeSaveChoices(Lio/didomi/sdk/events/PreferencesClickSPIPurposeSaveChoicesEvent;)V
    .annotation build Landroidx/annotation/UiThread;
    .end annotation
.end method

.method public abstract preferencesClickSaveChoices(Lio/didomi/sdk/events/PreferencesClickSaveChoicesEvent;)V
    .annotation build Landroidx/annotation/UiThread;
    .end annotation
.end method

.method public abstract preferencesClickVendorAgree(Lio/didomi/sdk/events/PreferencesClickVendorAgreeEvent;)V
    .annotation build Landroidx/annotation/UiThread;
    .end annotation
.end method

.method public abstract preferencesClickVendorDisagree(Lio/didomi/sdk/events/PreferencesClickVendorDisagreeEvent;)V
    .annotation build Landroidx/annotation/UiThread;
    .end annotation
.end method

.method public abstract preferencesClickVendorSaveChoices(Lio/didomi/sdk/events/PreferencesClickVendorSaveChoicesEvent;)V
    .annotation build Landroidx/annotation/UiThread;
    .end annotation
.end method

.method public abstract preferencesClickViewPurposes(Lio/didomi/sdk/events/PreferencesClickViewPurposesEvent;)V
    .annotation build Landroidx/annotation/UiThread;
    .end annotation
.end method

.method public abstract preferencesClickViewSPIPurposes(Lio/didomi/sdk/events/PreferencesClickViewSPIPurposesEvent;)V
    .annotation build Landroidx/annotation/UiThread;
    .end annotation
.end method

.method public abstract preferencesClickViewVendors(Lio/didomi/sdk/events/PreferencesClickViewVendorsEvent;)V
    .annotation build Landroidx/annotation/UiThread;
    .end annotation
.end method

.method public abstract ready(Lio/didomi/sdk/events/ReadyEvent;)V
    .annotation build Landroidx/annotation/UiThread;
    .end annotation
.end method

.method public abstract showNotice(Lio/didomi/sdk/events/ShowNoticeEvent;)V
    .annotation build Landroidx/annotation/UiThread;
    .end annotation
.end method

.method public abstract showPreferences(Lio/didomi/sdk/events/ShowPreferencesEvent;)V
    .annotation build Landroidx/annotation/UiThread;
    .end annotation
.end method

.method public abstract syncDone(Lio/didomi/sdk/events/SyncDoneEvent;)V
    .annotation build Landroidx/annotation/UiThread;
    .end annotation
.end method

.method public abstract syncError(Lio/didomi/sdk/events/SyncErrorEvent;)V
    .annotation build Landroidx/annotation/UiThread;
    .end annotation
.end method

.method public abstract syncReady(Lio/didomi/sdk/events/SyncReadyEvent;)V
    .annotation build Landroidx/annotation/UiThread;
    .end annotation
.end method
