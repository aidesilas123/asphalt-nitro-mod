package io.didomi.drawable.functionalinterfaces;

import androidx.annotation.Keep;
import androidx.annotation.UiThread;
import androidx.core.app.NotificationCompat;
import com.json.o2;
import io.didomi.drawable.events.ConsentChangedEvent;
import io.didomi.drawable.events.ErrorEvent;
import io.didomi.drawable.events.HideNoticeEvent;
import io.didomi.drawable.events.HidePreferencesEvent;
import io.didomi.drawable.events.LanguageUpdateFailedEvent;
import io.didomi.drawable.events.LanguageUpdatedEvent;
import io.didomi.drawable.events.NoticeClickAgreeEvent;
import io.didomi.drawable.events.NoticeClickDisagreeEvent;
import io.didomi.drawable.events.NoticeClickMoreInfoEvent;
import io.didomi.drawable.events.NoticeClickPrivacyPolicyEvent;
import io.didomi.drawable.events.NoticeClickViewSPIPurposesEvent;
import io.didomi.drawable.events.NoticeClickViewVendorsEvent;
import io.didomi.drawable.events.PreferencesClickAgreeToAllEvent;
import io.didomi.drawable.events.PreferencesClickAgreeToAllPurposesEvent;
import io.didomi.drawable.events.PreferencesClickAgreeToAllVendorsEvent;
import io.didomi.drawable.events.PreferencesClickCategoryAgreeEvent;
import io.didomi.drawable.events.PreferencesClickCategoryDisagreeEvent;
import io.didomi.drawable.events.PreferencesClickDisagreeToAllEvent;
import io.didomi.drawable.events.PreferencesClickDisagreeToAllPurposesEvent;
import io.didomi.drawable.events.PreferencesClickDisagreeToAllVendorsEvent;
import io.didomi.drawable.events.PreferencesClickPurposeAgreeEvent;
import io.didomi.drawable.events.PreferencesClickPurposeDisagreeEvent;
import io.didomi.drawable.events.PreferencesClickResetAllPurposesEvent;
import io.didomi.drawable.events.PreferencesClickSPICategoryAgreeEvent;
import io.didomi.drawable.events.PreferencesClickSPICategoryDisagreeEvent;
import io.didomi.drawable.events.PreferencesClickSPIPurposeAgreeEvent;
import io.didomi.drawable.events.PreferencesClickSPIPurposeDisagreeEvent;
import io.didomi.drawable.events.PreferencesClickSPIPurposeSaveChoicesEvent;
import io.didomi.drawable.events.PreferencesClickSaveChoicesEvent;
import io.didomi.drawable.events.PreferencesClickVendorAgreeEvent;
import io.didomi.drawable.events.PreferencesClickVendorDisagreeEvent;
import io.didomi.drawable.events.PreferencesClickVendorSaveChoicesEvent;
import io.didomi.drawable.events.PreferencesClickViewPurposesEvent;
import io.didomi.drawable.events.PreferencesClickViewSPIPurposesEvent;
import io.didomi.drawable.events.PreferencesClickViewVendorsEvent;
import io.didomi.drawable.events.ReadyEvent;
import io.didomi.drawable.events.ShowNoticeEvent;
import io.didomi.drawable.events.ShowPreferencesEvent;
import io.didomi.drawable.events.SyncDoneEvent;
import io.didomi.drawable.events.SyncErrorEvent;
import io.didomi.drawable.events.SyncReadyEvent;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u0000\u0086\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bg\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H'J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0007H'J\u0010\u0010\b\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\tH'J\u0010\u0010\n\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u000bH'J\u0010\u0010\f\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\rH'J\u0010\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u000fH'J\u0010\u0010\u0010\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0011H'J\u0010\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0013H'J\u0010\u0010\u0014\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0015H'J\u0010\u0010\u0016\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0017H'J\u0010\u0010\u0018\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0019H'J\u0010\u0010\u001a\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u001bH'J\u0010\u0010\u001c\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u001dH'J\u0010\u0010\u001e\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u001fH'J\u0010\u0010 \u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020!H'J\u0010\u0010\"\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020#H'J\u0010\u0010$\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020%H'J\u0010\u0010&\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020'H'J\u0010\u0010(\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020)H'J\u0010\u0010*\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020+H'J\u0010\u0010,\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020-H'J\u0010\u0010.\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020/H'J\u0010\u00100\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u000201H'J\u0010\u00102\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u000203H'J\u0010\u00104\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u000205H'J\u0010\u00106\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u000207H'J\u0010\u00108\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u000209H'J\u0010\u0010:\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020;H'J\u0010\u0010<\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020=H'J\u0010\u0010>\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020?H'J\u0010\u0010@\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020AH'J\u0010\u0010B\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020CH'J\u0010\u0010D\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020EH'J\u0010\u0010F\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020GH'J\u0010\u0010H\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020IH'J\u0010\u0010J\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020KH'J\u0010\u0010L\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020MH'J\u0010\u0010N\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020OH'J\u0010\u0010P\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020QH'J\u0010\u0010R\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020SH'J\u0010\u0010T\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020UH'¨\u0006V"}, d2 = {"Lio/didomi/sdk/functionalinterfaces/DidomiEventListener;", "", "consentChanged", "", NotificationCompat.CATEGORY_EVENT, "Lio/didomi/sdk/events/ConsentChangedEvent;", "error", "Lio/didomi/sdk/events/ErrorEvent;", "hideNotice", "Lio/didomi/sdk/events/HideNoticeEvent;", "hidePreferences", "Lio/didomi/sdk/events/HidePreferencesEvent;", "languageUpdateFailed", "Lio/didomi/sdk/events/LanguageUpdateFailedEvent;", "languageUpdated", "Lio/didomi/sdk/events/LanguageUpdatedEvent;", "noticeClickAgree", "Lio/didomi/sdk/events/NoticeClickAgreeEvent;", "noticeClickDisagree", "Lio/didomi/sdk/events/NoticeClickDisagreeEvent;", "noticeClickMoreInfo", "Lio/didomi/sdk/events/NoticeClickMoreInfoEvent;", "noticeClickPrivacyPolicy", "Lio/didomi/sdk/events/NoticeClickPrivacyPolicyEvent;", "noticeClickViewSPIPurposes", "Lio/didomi/sdk/events/NoticeClickViewSPIPurposesEvent;", "noticeClickViewVendors", "Lio/didomi/sdk/events/NoticeClickViewVendorsEvent;", "preferencesClickAgreeToAll", "Lio/didomi/sdk/events/PreferencesClickAgreeToAllEvent;", "preferencesClickAgreeToAllPurposes", "Lio/didomi/sdk/events/PreferencesClickAgreeToAllPurposesEvent;", "preferencesClickAgreeToAllVendors", "Lio/didomi/sdk/events/PreferencesClickAgreeToAllVendorsEvent;", "preferencesClickCategoryAgree", "Lio/didomi/sdk/events/PreferencesClickCategoryAgreeEvent;", "preferencesClickCategoryDisagree", "Lio/didomi/sdk/events/PreferencesClickCategoryDisagreeEvent;", "preferencesClickDisagreeToAll", "Lio/didomi/sdk/events/PreferencesClickDisagreeToAllEvent;", "preferencesClickDisagreeToAllPurposes", "Lio/didomi/sdk/events/PreferencesClickDisagreeToAllPurposesEvent;", "preferencesClickDisagreeToAllVendors", "Lio/didomi/sdk/events/PreferencesClickDisagreeToAllVendorsEvent;", "preferencesClickPurposeAgree", "Lio/didomi/sdk/events/PreferencesClickPurposeAgreeEvent;", "preferencesClickPurposeDisagree", "Lio/didomi/sdk/events/PreferencesClickPurposeDisagreeEvent;", "preferencesClickResetAllPurposes", "Lio/didomi/sdk/events/PreferencesClickResetAllPurposesEvent;", "preferencesClickSPICategoryAgree", "Lio/didomi/sdk/events/PreferencesClickSPICategoryAgreeEvent;", "preferencesClickSPICategoryDisagree", "Lio/didomi/sdk/events/PreferencesClickSPICategoryDisagreeEvent;", "preferencesClickSPIPurposeAgree", "Lio/didomi/sdk/events/PreferencesClickSPIPurposeAgreeEvent;", "preferencesClickSPIPurposeDisagree", "Lio/didomi/sdk/events/PreferencesClickSPIPurposeDisagreeEvent;", "preferencesClickSPIPurposeSaveChoices", "Lio/didomi/sdk/events/PreferencesClickSPIPurposeSaveChoicesEvent;", "preferencesClickSaveChoices", "Lio/didomi/sdk/events/PreferencesClickSaveChoicesEvent;", "preferencesClickVendorAgree", "Lio/didomi/sdk/events/PreferencesClickVendorAgreeEvent;", "preferencesClickVendorDisagree", "Lio/didomi/sdk/events/PreferencesClickVendorDisagreeEvent;", "preferencesClickVendorSaveChoices", "Lio/didomi/sdk/events/PreferencesClickVendorSaveChoicesEvent;", "preferencesClickViewPurposes", "Lio/didomi/sdk/events/PreferencesClickViewPurposesEvent;", "preferencesClickViewSPIPurposes", "Lio/didomi/sdk/events/PreferencesClickViewSPIPurposesEvent;", "preferencesClickViewVendors", "Lio/didomi/sdk/events/PreferencesClickViewVendorsEvent;", o2.h.s, "Lio/didomi/sdk/events/ReadyEvent;", "showNotice", "Lio/didomi/sdk/events/ShowNoticeEvent;", "showPreferences", "Lio/didomi/sdk/events/ShowPreferencesEvent;", "syncDone", "Lio/didomi/sdk/events/SyncDoneEvent;", "syncError", "Lio/didomi/sdk/events/SyncErrorEvent;", "syncReady", "Lio/didomi/sdk/events/SyncReadyEvent;", "android_release"}, mv = {1, 8, 0}, xi = 48)
public interface DidomiEventListener {
    @UiThread
    void consentChanged(ConsentChangedEvent event);

    @UiThread
    void error(ErrorEvent event);

    @UiThread
    void hideNotice(HideNoticeEvent event);

    @UiThread
    void hidePreferences(HidePreferencesEvent event);

    @UiThread
    void languageUpdateFailed(LanguageUpdateFailedEvent event);

    @UiThread
    void languageUpdated(LanguageUpdatedEvent event);

    @UiThread
    void noticeClickAgree(NoticeClickAgreeEvent event);

    @UiThread
    void noticeClickDisagree(NoticeClickDisagreeEvent event);

    @UiThread
    void noticeClickMoreInfo(NoticeClickMoreInfoEvent event);

    @UiThread
    void noticeClickPrivacyPolicy(NoticeClickPrivacyPolicyEvent event);

    @UiThread
    void noticeClickViewSPIPurposes(NoticeClickViewSPIPurposesEvent event);

    @UiThread
    void noticeClickViewVendors(NoticeClickViewVendorsEvent event);

    @UiThread
    void preferencesClickAgreeToAll(PreferencesClickAgreeToAllEvent event);

    @UiThread
    void preferencesClickAgreeToAllPurposes(PreferencesClickAgreeToAllPurposesEvent event);

    @UiThread
    void preferencesClickAgreeToAllVendors(PreferencesClickAgreeToAllVendorsEvent event);

    @UiThread
    void preferencesClickCategoryAgree(PreferencesClickCategoryAgreeEvent event);

    @UiThread
    void preferencesClickCategoryDisagree(PreferencesClickCategoryDisagreeEvent event);

    @UiThread
    void preferencesClickDisagreeToAll(PreferencesClickDisagreeToAllEvent event);

    @UiThread
    void preferencesClickDisagreeToAllPurposes(PreferencesClickDisagreeToAllPurposesEvent event);

    @UiThread
    void preferencesClickDisagreeToAllVendors(PreferencesClickDisagreeToAllVendorsEvent event);

    @UiThread
    void preferencesClickPurposeAgree(PreferencesClickPurposeAgreeEvent event);

    @UiThread
    void preferencesClickPurposeDisagree(PreferencesClickPurposeDisagreeEvent event);

    @UiThread
    void preferencesClickResetAllPurposes(PreferencesClickResetAllPurposesEvent event);

    @UiThread
    void preferencesClickSPICategoryAgree(PreferencesClickSPICategoryAgreeEvent event);

    @UiThread
    void preferencesClickSPICategoryDisagree(PreferencesClickSPICategoryDisagreeEvent event);

    @UiThread
    void preferencesClickSPIPurposeAgree(PreferencesClickSPIPurposeAgreeEvent event);

    @UiThread
    void preferencesClickSPIPurposeDisagree(PreferencesClickSPIPurposeDisagreeEvent event);

    @UiThread
    void preferencesClickSPIPurposeSaveChoices(PreferencesClickSPIPurposeSaveChoicesEvent event);

    @UiThread
    void preferencesClickSaveChoices(PreferencesClickSaveChoicesEvent event);

    @UiThread
    void preferencesClickVendorAgree(PreferencesClickVendorAgreeEvent event);

    @UiThread
    void preferencesClickVendorDisagree(PreferencesClickVendorDisagreeEvent event);

    @UiThread
    void preferencesClickVendorSaveChoices(PreferencesClickVendorSaveChoicesEvent event);

    @UiThread
    void preferencesClickViewPurposes(PreferencesClickViewPurposesEvent event);

    @UiThread
    void preferencesClickViewSPIPurposes(PreferencesClickViewSPIPurposesEvent event);

    @UiThread
    void preferencesClickViewVendors(PreferencesClickViewVendorsEvent event);

    @UiThread
    void ready(ReadyEvent event);

    @UiThread
    void showNotice(ShowNoticeEvent event);

    @UiThread
    void showPreferences(ShowPreferencesEvent event);

    @UiThread
    void syncDone(SyncDoneEvent event);

    @UiThread
    void syncError(SyncErrorEvent event);

    @UiThread
    void syncReady(SyncReadyEvent event);
}
