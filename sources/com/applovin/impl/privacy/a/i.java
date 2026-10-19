package com.applovin.impl.privacy.a;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.content.DialogInterface;
import android.net.Uri;
import android.text.SpannableString;
import android.text.method.LinkMovementMethod;
import android.text.style.ClickableSpan;
import android.view.View;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.applovin.impl.privacy.a.c;
import com.applovin.impl.privacy.a.d;
import com.applovin.impl.privacy.a.e;
import com.applovin.impl.privacy.a.g;
import com.applovin.impl.privacy.cmp.CmpServiceImpl;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.sdk.utils.u;
import com.applovin.impl.sdk.x;
import com.applovin.sdk.AppLovinCmpError;
import com.applovin.sdk.AppLovinSdkConfiguration;
import com.applovin.sdk.AppLovinSdkUtils;
import com.applovin.sdk.AppLovinWebViewActivity;
import com.applovin.sdk.R;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public class i {
    private final com.applovin.impl.sdk.utils.a aiO = new com.applovin.impl.sdk.utils.a() { // from class: com.applovin.impl.privacy.a.i.1
        @Override // com.applovin.impl.sdk.utils.a, android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(Activity activity) {
            super.onActivityResumed(activity);
            if ((activity instanceof AppLovinWebViewActivity) || i.this.ayp == null) {
                return;
            }
            if (i.this.ayq != null) {
                i.this.ayq.dismiss();
                i.this.ayq = null;
            }
            e eVar = i.this.ayp;
            i.this.ayp = null;
            i.this.a(eVar, activity);
        }
    };
    private final int aym;
    private List<e> ayn;
    private c.a ayo;
    private e ayp;
    private Dialog ayq;
    private final com.applovin.impl.sdk.n sdk;

    public i(com.applovin.impl.sdk.n nVar) {
        this.sdk = nVar;
        this.aym = ((Integer) nVar.a(com.applovin.impl.sdk.c.b.aQX)).intValue();
    }

    private e Al() {
        for (e eVar : this.ayn) {
            if (eVar.Ae()) {
                return eVar;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(AlertDialog alertDialog, DialogInterface dialogInterface) {
        TextView textView = (TextView) alertDialog.findViewById(alertDialog.getContext().getResources().getIdentifier("android:id/alertTitle", null, null));
        textView.setLinkTextColor(textView.getCurrentTextColor());
        textView.setMovementMethod(LinkMovementMethod.getInstance());
        textView.setMaxLines(this.aym);
    }

    private void a(final e eVar) {
        AppLovinSdkUtils.runOnUiThreadDelayed(new Runnable() { // from class: com.applovin.impl.privacy.a.i.8
            @Override // java.lang.Runnable
            public void run() {
                i iVar = i.this;
                iVar.a(eVar, iVar.sdk.CF());
            }
        }, TimeUnit.SECONDS.toMillis(1L));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final e eVar, final Activity activity) {
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.privacy.a.q
            @Override // java.lang.Runnable
            public final void run() {
                this.a.c(eVar, activity);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(e eVar, Activity activity, @Nullable Boolean bool) {
        a(cm(eVar.b(bool)), activity);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(e eVar, Activity activity) {
        a(eVar, activity, (Boolean) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(final e eVar, final Activity activity) {
        this.sdk.BN();
        if (x.Fn()) {
            this.sdk.BN().f("AppLovinSdk", "Transitioning to state: " + eVar);
        }
        if (eVar.Ac() == e.b.ALERT) {
            if (com.applovin.impl.sdk.utils.b.i(activity)) {
                AppLovinSdkUtils.runOnUiThreadDelayed(new Runnable() { // from class: com.applovin.impl.privacy.a.i.2
                    @Override // java.lang.Runnable
                    public void run() {
                        i iVar = i.this;
                        iVar.a(eVar, iVar.sdk.CF());
                    }
                }, TimeUnit.SECONDS.toMillis(1L));
                return;
            }
            f fVar = (f) eVar;
            this.ayp = fVar;
            AlertDialog.Builder builder = new AlertDialog.Builder(activity);
            builder.setCancelable(false);
            for (final g gVar : fVar.Af()) {
                DialogInterface.OnClickListener onClickListener = new DialogInterface.OnClickListener() { // from class: com.applovin.impl.privacy.a.i.3
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i) {
                        i.this.ayp = null;
                        i.this.ayq = null;
                        e eVarCm = i.this.cm(gVar.Ah());
                        if (eVarCm == null) {
                            i.this.sdk.BN();
                            if (x.Fn()) {
                                i.this.sdk.BN().i("AppLovinSdk", "Consent flow failed to get destination state for TOS/PP alert. Finishing flow...");
                            }
                            i.this.Ak();
                            return;
                        }
                        i.this.a(eVarCm, activity);
                        if (eVarCm.Ac() != e.b.ALERT) {
                            dialogInterface.dismiss();
                        }
                    }
                };
                if (gVar.Ag() == g.a.POSITIVE) {
                    builder.setPositiveButton(gVar.getTitle(), onClickListener);
                } else if (gVar.Ag() == g.a.NEGATIVE) {
                    builder.setNegativeButton(gVar.getTitle(), onClickListener);
                } else {
                    builder.setNeutralButton(gVar.getTitle(), onClickListener);
                }
            }
            String title = fVar.getTitle();
            SpannableString spannableString = null;
            if (StringUtils.isValidString(title)) {
                spannableString = new SpannableString(title);
                String strGA = com.applovin.impl.sdk.n.gA(R.string.applovin_terms_of_service_text);
                String strGA2 = com.applovin.impl.sdk.n.gA(R.string.applovin_privacy_policy_text);
                if (StringUtils.containsAtLeastOneSubstring(title, Arrays.asList(strGA, strGA2))) {
                    final Uri termsOfServiceUri = this.sdk.Cl().getTermsOfServiceUri();
                    if (termsOfServiceUri != null) {
                        StringUtils.addLinks(spannableString, Pattern.compile(strGA), new ClickableSpan() { // from class: com.applovin.impl.privacy.a.i.4
                            @Override // android.text.style.ClickableSpan
                            public void onClick(View view) {
                                u.a(termsOfServiceUri, activity, i.this.sdk);
                            }
                        }, true);
                    }
                    final Uri privacyPolicyUri = this.sdk.Cl().getPrivacyPolicyUri();
                    StringUtils.addLinks(spannableString, Pattern.compile(strGA2), new ClickableSpan() { // from class: com.applovin.impl.privacy.a.i.5
                        @Override // android.text.style.ClickableSpan
                        public void onClick(View view) {
                            u.a(privacyPolicyUri, activity, i.this.sdk);
                        }
                    }, true);
                }
            }
            final AlertDialog alertDialogCreate = builder.setTitle(spannableString).setMessage(fVar.getMessage()).create();
            alertDialogCreate.setOnShowListener(new DialogInterface.OnShowListener() { // from class: com.applovin.impl.privacy.a.r
                @Override // android.content.DialogInterface.OnShowListener
                public final void onShow(DialogInterface dialogInterface) {
                    this.a.a(alertDialogCreate, dialogInterface);
                }
            });
            this.ayq = alertDialogCreate;
            alertDialogCreate.show();
            return;
        }
        if (eVar.Ac() == e.b.EVENT) {
            h hVar = (h) eVar;
            String name = hVar.getName();
            Map<String, String> mapAj = hVar.Aj();
            if (mapAj == null) {
                mapAj = new HashMap<>(1);
            }
            mapAj.put("flow_type", this.sdk.Cl().zX().getType());
            this.sdk.BF().trackEvent(name, mapAj);
            b(hVar, activity);
            return;
        }
        if (eVar.Ac() == e.b.HAS_USER_CONSENT) {
            aI(true);
            b(eVar, activity);
            return;
        }
        if (eVar.Ac() == e.b.CMP_LOAD) {
            if (com.applovin.impl.sdk.utils.b.i(activity)) {
                a(eVar);
                return;
            } else {
                this.sdk.Cn().loadCmp(activity, new CmpServiceImpl.a() { // from class: com.applovin.impl.privacy.a.i.6
                    @Override // com.applovin.impl.privacy.cmp.CmpServiceImpl.a
                    public void c(AppLovinCmpError appLovinCmpError) {
                        i.this.a(eVar, activity, Boolean.valueOf(appLovinCmpError == null));
                    }
                });
                return;
            }
        }
        if (eVar.Ac() == e.b.CMP_SHOW) {
            if (com.applovin.impl.sdk.utils.b.i(activity)) {
                a(eVar);
                return;
            } else {
                this.sdk.BF().trackEvent("cf_start");
                this.sdk.Cn().showCmp(activity, new CmpServiceImpl.b() { // from class: com.applovin.impl.privacy.a.i.7
                    @Override // com.applovin.impl.privacy.cmp.CmpServiceImpl.b
                    public void d(AppLovinCmpError appLovinCmpError) {
                        i.this.b(eVar, activity);
                    }
                });
                return;
            }
        }
        if (eVar.Ac() == e.b.DECISION) {
            e.a aVarAd = eVar.Ad();
            if (aVarAd != e.a.IS_AL_GDPR) {
                throw new IllegalStateException("Unsupported decision type: " + aVarAd);
            }
            AppLovinSdkConfiguration.ConsentFlowUserGeography debugUserGeography = this.sdk.Cl().getDebugUserGeography();
            AppLovinSdkConfiguration.ConsentFlowUserGeography consentFlowUserGeography = AppLovinSdkConfiguration.ConsentFlowUserGeography.GDPR;
            a(eVar, activity, Boolean.valueOf(this.sdk.getConfiguration().getConsentFlowUserGeography() == consentFlowUserGeography || (debugUserGeography == consentFlowUserGeography && u.b(com.applovin.impl.sdk.n.getApplicationContext(), this.sdk))));
            return;
        }
        if (eVar.Ac() != e.b.TERMS_FLOW) {
            if (eVar.Ac() != e.b.REINIT) {
                throw new IllegalStateException("No destination consent flow state found!");
            }
            Ak();
            return;
        }
        List<e> listI = b.i(this.sdk);
        if (listI == null || listI.size() <= 0) {
            Ak();
            return;
        }
        this.sdk.BF().trackEvent("cf_start");
        this.ayn = listI;
        a(Al(), activity);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public e cm(String str) {
        List<e> list = this.ayn;
        if (list == null) {
            return null;
        }
        for (e eVar : list) {
            if (str.equalsIgnoreCase(eVar.mQ())) {
                return eVar;
            }
        }
        return null;
    }

    public void Ak() {
        this.sdk.BN();
        if (x.Fn()) {
            this.sdk.BN().f("AppLovinSdk", "Reinitializing SDK and ending consent flow");
        }
        this.ayn = null;
        this.sdk.BM().b(this.aiO);
        c.a aVar = this.ayo;
        if (aVar != null) {
            aVar.onFlowCompleted(null);
            this.ayo = null;
        }
    }

    public void a(List<e> list, Activity activity, c.a aVar) {
        if (this.ayn == null) {
            this.ayn = list;
            this.ayo = aVar;
            com.applovin.impl.sdk.n.E(activity).a(this.aiO);
            a(Al(), activity);
            return;
        }
        this.sdk.BN();
        if (x.Fn()) {
            this.sdk.BN().f("AppLovinSdk", "Unable to start states: " + list);
        }
        this.sdk.BN();
        if (x.Fn()) {
            this.sdk.BN().f("AppLovinSdk", "Consent flow already in progress for states: " + this.ayn);
        }
        aVar.onFlowCompleted(new a(a.axJ, "Consent flow is already in progress."));
    }

    public void aI(boolean z) {
        if (this.sdk.Cl().zX() == d.a.TERMS) {
            return;
        }
        com.applovin.impl.privacy.a.b(z, com.applovin.impl.sdk.n.getApplicationContext());
    }

    public boolean zY() {
        return this.ayn != null;
    }
}
