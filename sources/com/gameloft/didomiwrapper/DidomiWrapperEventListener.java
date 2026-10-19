package com.gameloft.didomiwrapper;

import androidx.annotation.NonNull;
import io.didomi.drawable.events.ConsentChangedEvent;
import io.didomi.drawable.events.EventListener;
import io.didomi.drawable.events.HideNoticeEvent;
import io.didomi.drawable.events.HidePreferencesEvent;
import io.didomi.drawable.events.NoticeClickAgreeEvent;
import io.didomi.drawable.events.NoticeClickDisagreeEvent;
import io.didomi.drawable.events.NoticeClickMoreInfoEvent;
import io.didomi.drawable.events.PreferencesClickAgreeToAllEvent;
import io.didomi.drawable.events.PreferencesClickDisagreeToAllEvent;
import io.didomi.drawable.events.PreferencesClickPurposeAgreeEvent;
import io.didomi.drawable.events.PreferencesClickPurposeDisagreeEvent;
import io.didomi.drawable.events.PreferencesClickSaveChoicesEvent;
import io.didomi.drawable.events.PreferencesClickVendorAgreeEvent;
import io.didomi.drawable.events.PreferencesClickVendorDisagreeEvent;
import io.didomi.drawable.events.PreferencesClickVendorSaveChoicesEvent;
import io.didomi.drawable.events.PreferencesClickViewVendorsEvent;
import io.didomi.drawable.events.ShowNoticeEvent;
import io.didomi.drawable.events.ShowPreferencesEvent;

/* JADX INFO: loaded from: classes2.dex */
public class DidomiWrapperEventListener extends EventListener {
    public static native void NativeOnConsentChanged();

    public static native void NativeOnError();

    public static native void NativeOnHideNotice();

    public static native void NativeOnHidePreferences();

    public static native void NativeOnNoticeClickAgree();

    public static native void NativeOnNoticeClickDisagree();

    public static native void NativeOnNoticeClickMoreInfo();

    public static native void NativeOnPreferencesClickAgreeToAll();

    public static native void NativeOnPreferencesClickDisagreeToAll();

    public static native void NativeOnPreferencesClickSaveChoices();

    public static native void NativeOnReady();

    public static native void NativeOnShowNotice();

    public static native void NativeOnShowPreferences();

    @Override // io.didomi.drawable.events.EventListener, io.didomi.drawable.functionalinterfaces.DidomiEventListener
    public void consentChanged(@NonNull ConsentChangedEvent consentChangedEvent) {
        try {
            NativeOnConsentChanged();
        } catch (Exception | UnsatisfiedLinkError unused) {
        }
    }

    @Override // io.didomi.drawable.events.EventListener, io.didomi.drawable.functionalinterfaces.DidomiEventListener
    public void hideNotice(@NonNull HideNoticeEvent hideNoticeEvent) {
        try {
            NativeOnHideNotice();
        } catch (Exception | UnsatisfiedLinkError unused) {
        }
    }

    @Override // io.didomi.drawable.events.EventListener, io.didomi.drawable.functionalinterfaces.DidomiEventListener
    public void hidePreferences(@NonNull HidePreferencesEvent hidePreferencesEvent) {
        try {
            NativeOnHidePreferences();
        } catch (Exception | UnsatisfiedLinkError unused) {
        }
    }

    @Override // io.didomi.drawable.events.EventListener, io.didomi.drawable.functionalinterfaces.DidomiEventListener
    public void noticeClickAgree(@NonNull NoticeClickAgreeEvent noticeClickAgreeEvent) {
        try {
            NativeOnNoticeClickAgree();
        } catch (Exception | UnsatisfiedLinkError unused) {
        }
    }

    @Override // io.didomi.drawable.events.EventListener, io.didomi.drawable.functionalinterfaces.DidomiEventListener
    public void noticeClickDisagree(@NonNull NoticeClickDisagreeEvent noticeClickDisagreeEvent) {
        try {
            NativeOnNoticeClickDisagree();
        } catch (Exception | UnsatisfiedLinkError unused) {
        }
    }

    @Override // io.didomi.drawable.events.EventListener, io.didomi.drawable.functionalinterfaces.DidomiEventListener
    public void noticeClickMoreInfo(@NonNull NoticeClickMoreInfoEvent noticeClickMoreInfoEvent) {
        try {
            NativeOnNoticeClickMoreInfo();
        } catch (Exception | UnsatisfiedLinkError unused) {
        }
    }

    @Override // io.didomi.drawable.events.EventListener, io.didomi.drawable.functionalinterfaces.DidomiEventListener
    public void preferencesClickAgreeToAll(@NonNull PreferencesClickAgreeToAllEvent preferencesClickAgreeToAllEvent) {
        try {
            NativeOnPreferencesClickAgreeToAll();
        } catch (Exception | UnsatisfiedLinkError unused) {
        }
    }

    @Override // io.didomi.drawable.events.EventListener, io.didomi.drawable.functionalinterfaces.DidomiEventListener
    public void preferencesClickDisagreeToAll(@NonNull PreferencesClickDisagreeToAllEvent preferencesClickDisagreeToAllEvent) {
        try {
            NativeOnPreferencesClickDisagreeToAll();
        } catch (Exception | UnsatisfiedLinkError unused) {
        }
    }

    @Override // io.didomi.drawable.events.EventListener, io.didomi.drawable.functionalinterfaces.DidomiEventListener
    public void preferencesClickPurposeAgree(@NonNull PreferencesClickPurposeAgreeEvent preferencesClickPurposeAgreeEvent) {
    }

    @Override // io.didomi.drawable.events.EventListener, io.didomi.drawable.functionalinterfaces.DidomiEventListener
    public void preferencesClickPurposeDisagree(@NonNull PreferencesClickPurposeDisagreeEvent preferencesClickPurposeDisagreeEvent) {
    }

    @Override // io.didomi.drawable.events.EventListener, io.didomi.drawable.functionalinterfaces.DidomiEventListener
    public void preferencesClickSaveChoices(@NonNull PreferencesClickSaveChoicesEvent preferencesClickSaveChoicesEvent) {
        try {
            NativeOnPreferencesClickSaveChoices();
        } catch (Exception | UnsatisfiedLinkError unused) {
        }
    }

    @Override // io.didomi.drawable.events.EventListener, io.didomi.drawable.functionalinterfaces.DidomiEventListener
    public void preferencesClickVendorAgree(@NonNull PreferencesClickVendorAgreeEvent preferencesClickVendorAgreeEvent) {
    }

    @Override // io.didomi.drawable.events.EventListener, io.didomi.drawable.functionalinterfaces.DidomiEventListener
    public void preferencesClickVendorDisagree(@NonNull PreferencesClickVendorDisagreeEvent preferencesClickVendorDisagreeEvent) {
    }

    @Override // io.didomi.drawable.events.EventListener, io.didomi.drawable.functionalinterfaces.DidomiEventListener
    public void preferencesClickVendorSaveChoices(@NonNull PreferencesClickVendorSaveChoicesEvent preferencesClickVendorSaveChoicesEvent) {
    }

    @Override // io.didomi.drawable.events.EventListener, io.didomi.drawable.functionalinterfaces.DidomiEventListener
    public void preferencesClickViewVendors(@NonNull PreferencesClickViewVendorsEvent preferencesClickViewVendorsEvent) {
    }

    @Override // io.didomi.drawable.events.EventListener, io.didomi.drawable.functionalinterfaces.DidomiEventListener
    public void showNotice(@NonNull ShowNoticeEvent showNoticeEvent) {
        try {
            NativeOnShowNotice();
        } catch (Exception | UnsatisfiedLinkError unused) {
        }
    }

    @Override // io.didomi.drawable.events.EventListener, io.didomi.drawable.functionalinterfaces.DidomiEventListener
    public void showPreferences(@NonNull ShowPreferencesEvent showPreferencesEvent) {
        try {
            NativeOnShowPreferences();
        } catch (Exception | UnsatisfiedLinkError unused) {
        }
    }
}
