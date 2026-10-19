package com.applovin.impl.privacy.cmp;

import android.app.Activity;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.applovin.impl.sdk.n;
import com.applovin.impl.sdk.utils.AppLovinSdkExtraParameterKey;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.sdk.utils.u;
import com.applovin.impl.sdk.x;
import com.applovin.sdk.AppLovinCmpError;
import com.applovin.sdk.AppLovinSdkConfiguration;
import com.google.android.ump.ConsentDebugSettings;
import com.google.android.ump.ConsentForm;
import com.google.android.ump.ConsentInformation;
import com.google.android.ump.ConsentRequestParameters;
import com.google.android.ump.FormError;
import com.google.android.ump.UserMessagingPlatform;

/* JADX INFO: loaded from: classes.dex */
public class b {
    private ConsentForm axE;
    private final x logger;
    private final n sdk;

    public interface a {
        void onFlowHidden(Bundle bundle);

        void onFlowLoadFailed(CmpErrorImpl cmpErrorImpl);

        void onFlowLoaded(Bundle bundle);

        void onFlowShowFailed(CmpErrorImpl cmpErrorImpl);
    }

    public b(n nVar) {
        this.sdk = nVar;
        this.logger = nVar.BN();
        ConsentInformation consentInformation = UserMessagingPlatform.getConsentInformation(n.getApplicationContext());
        d("Initializing with SDK Version: " + getSdkVersion() + ", consentStatus: " + consentInformation.getConsentStatus() + ", consentFormAvailable: " + consentInformation.isConsentFormAvailable());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0016  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public com.applovin.impl.privacy.cmp.CmpErrorImpl a(com.google.android.ump.FormError r4, java.lang.String r5) {
        /*
            r3 = this;
            com.applovin.sdk.AppLovinCmpError$Code r0 = com.applovin.sdk.AppLovinCmpError.Code.UNSPECIFIED
            int r1 = r4.getErrorCode()
            r2 = 1
            if (r1 == r2) goto L16
            r2 = 2
            if (r1 == r2) goto L16
            r2 = 3
            if (r1 == r2) goto L13
            r2 = 4
            if (r1 == r2) goto L16
            goto L18
        L13:
            com.applovin.sdk.AppLovinCmpError$Code r0 = com.applovin.sdk.AppLovinCmpError.Code.INTEGRATION_ERROR
            goto L18
        L16:
            com.applovin.sdk.AppLovinCmpError$Code r0 = com.applovin.sdk.AppLovinCmpError.Code.FORM_UNAVAILABLE
        L18:
            com.applovin.impl.privacy.cmp.CmpErrorImpl r1 = new com.applovin.impl.privacy.cmp.CmpErrorImpl
            int r2 = r4.getErrorCode()
            java.lang.String r4 = r4.getMessage()
            r1.<init>(r0, r5, r2, r4)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.impl.privacy.cmp.b.a(com.google.android.ump.FormError, java.lang.String):com.applovin.impl.privacy.cmp.CmpErrorImpl");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(String str) {
        if (x.Fn()) {
            this.logger.f("GoogleCmpAdapter", str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e(String str) {
        if (x.Fn()) {
            this.logger.i("GoogleCmpAdapter", str);
        }
    }

    public void a(final Activity activity, com.applovin.impl.privacy.cmp.a aVar, final a aVar2) {
        ConsentRequestParameters.Builder builder = new ConsentRequestParameters.Builder();
        if (u.b(n.getApplicationContext(), this.sdk) && aVar.getDebugUserGeography() == AppLovinSdkConfiguration.ConsentFlowUserGeography.GDPR) {
            UserMessagingPlatform.getConsentInformation(activity).reset();
            builder.setConsentDebugSettings(new ConsentDebugSettings.Builder(activity).setForceTesting(true).setDebugGeography(1).addTestDeviceHashedId(StringUtils.emptyIfNull(this.sdk.getSettings().getExtraParameters().get(AppLovinSdkExtraParameterKey.GOOGLE_TEST_DEVICE_HASHED_ID))).build());
        }
        UserMessagingPlatform.getConsentInformation(activity).requestConsentInfoUpdate(activity, builder.build(), new ConsentInformation.OnConsentInfoUpdateSuccessListener() { // from class: com.applovin.impl.privacy.cmp.b.1
            @Override // com.google.android.ump.ConsentInformation.OnConsentInfoUpdateSuccessListener
            public void onConsentInfoUpdateSuccess() {
                ConsentInformation consentInformation = UserMessagingPlatform.getConsentInformation(activity);
                boolean zIsConsentFormAvailable = consentInformation.isConsentFormAvailable();
                int consentStatus = consentInformation.getConsentStatus();
                b.this.d("Loaded parameters consentStatus: " + consentStatus + ", consentFormAvailable: " + zIsConsentFormAvailable);
                if (!zIsConsentFormAvailable) {
                    b.this.e("Failed to load form.");
                    aVar2.onFlowLoadFailed(new CmpErrorImpl(AppLovinCmpError.Code.FORM_UNAVAILABLE, "Consent form unavailable"));
                    return;
                }
                if (consentStatus == 2) {
                    b.this.d("Successfully requested consent info");
                    b.this.d("Loading consent form...");
                    UserMessagingPlatform.loadConsentForm(activity, new UserMessagingPlatform.OnConsentFormLoadSuccessListener() { // from class: com.applovin.impl.privacy.cmp.b.1.1
                        @Override // com.google.android.ump.UserMessagingPlatform.OnConsentFormLoadSuccessListener
                        public void onConsentFormLoadSuccess(@NonNull ConsentForm consentForm) {
                            b.this.d("Successfully loaded consent form");
                            b.this.axE = consentForm;
                            aVar2.onFlowLoaded(null);
                        }
                    }, new UserMessagingPlatform.OnConsentFormLoadFailureListener() { // from class: com.applovin.impl.privacy.cmp.b.1.2
                        @Override // com.google.android.ump.UserMessagingPlatform.OnConsentFormLoadFailureListener
                        public void onConsentFormLoadFailure(@NonNull FormError formError) {
                            b.this.e("Failed to load with error: " + formError);
                            AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                            aVar2.onFlowLoadFailed(b.this.a(formError, "Consent form load failed"));
                        }
                    });
                    return;
                }
                b.this.e("Failed to load with consent status: " + consentStatus);
                aVar2.onFlowLoadFailed(new CmpErrorImpl(AppLovinCmpError.Code.FORM_NOT_REQUIRED, "Consent form not required for consent status: " + consentStatus));
            }
        }, new ConsentInformation.OnConsentInfoUpdateFailureListener() { // from class: com.applovin.impl.privacy.cmp.b.2
            @Override // com.google.android.ump.ConsentInformation.OnConsentInfoUpdateFailureListener
            public void onConsentInfoUpdateFailure(@NonNull FormError formError) {
                b.this.e("Failed to request consent info with error: " + formError);
                aVar2.onFlowLoadFailed(b.this.a(formError, "Consent info update failed"));
            }
        });
    }

    public void b(Activity activity, com.applovin.impl.privacy.cmp.a aVar, final a aVar2) {
        if (this.axE == null) {
            e("Failed to show - not ready yet");
            aVar2.onFlowShowFailed(new CmpErrorImpl(AppLovinCmpError.Code.FORM_UNAVAILABLE, "Consent form not ready"));
        } else {
            d("Showing consent form...");
            this.axE.show(activity, new ConsentForm.OnConsentFormDismissedListener() { // from class: com.applovin.impl.privacy.cmp.b.3
                @Override // com.google.android.ump.ConsentForm.OnConsentFormDismissedListener
                public void onConsentFormDismissed(@Nullable FormError formError) {
                    if (formError == null) {
                        b.this.d("Consent form finished showing");
                        aVar2.onFlowHidden(null);
                        return;
                    }
                    b.this.e("Failed to show with error: " + formError);
                    aVar2.onFlowShowFailed(b.this.a(formError, "Consent form show failed"));
                }
            });
        }
    }

    public void destroy() {
        if (this.axE != null) {
            this.axE = null;
        }
    }

    public String getSdkVersion() {
        return null;
    }

    public void zS() {
        d("Resetting consent information");
        UserMessagingPlatform.getConsentInformation(n.getApplicationContext()).reset();
    }

    public boolean zU() {
        return true;
    }

    public boolean zV() {
        return true;
    }
}
