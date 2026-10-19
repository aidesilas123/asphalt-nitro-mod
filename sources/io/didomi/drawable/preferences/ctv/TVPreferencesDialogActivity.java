package io.didomi.drawable.preferences.ctv;

import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.Button;
import androidx.activity.OnBackPressedCallback;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import com.fyber.inneractive.sdk.external.InneractiveMediationDefs;
import com.json.b4;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import io.didomi.drawable.AbstractActivityC1836n;
import io.didomi.drawable.C1804j7;
import io.didomi.drawable.C1824l7;
import io.didomi.drawable.C1885r8;
import io.didomi.drawable.C1905t8;
import io.didomi.drawable.C8;
import io.didomi.drawable.D8;
import io.didomi.drawable.Didomi;
import io.didomi.drawable.F2;
import io.didomi.drawable.H0;
import io.didomi.drawable.I3;
import io.didomi.drawable.InterfaceC1893s6;
import io.didomi.drawable.O3;
import io.didomi.drawable.R;
import io.didomi.drawable.k9;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.collections.p;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/*  JADX ERROR: Error in decompile pass: KotlinMetadataDecompile
    kotlin.metadata.InconsistentKotlinMetadataException: Exception occurred when reading Kotlin metadata
    	at kotlin.metadata.jvm.internal.JvmReadUtils.readMetadataImpl$kotlin_metadata_jvm(JvmReadUtils.kt:108)
    	at kotlin.metadata.jvm.KotlinClassMetadata$Companion.readLenient(KotlinClassMetadata.kt:418)
    	at jadx.plugins.kotlin.metadata.utils.KotlinMetadataExtKt.getKotlinClassMetadata(KotlinMetadataExt.kt:71)
    	at jadx.plugins.kotlin.metadata.utils.KmClassWrapper$Companion.getWrapper(KmClassWrapper.kt:37)
    	at jadx.plugins.kotlin.metadata.pass.KotlinMetadataDecompilePass.visit(KotlinMetadataDecompilePass.kt:35)
    	at jadx.plugins.kotlin.metadata.pass.KotlinMetadataDecompilePass.visit(KotlinMetadataDecompilePass.kt:33)
    Caused by: kotlin.metadata.internal.protobuf.InvalidProtocolBufferException: Message was missing required fields.  (Lite runtime could not determine which fields were missing).
    	at kotlin.metadata.internal.protobuf.UninitializedMessageException.asInvalidProtocolBufferException(UninitializedMessageException.java:81)
    	at kotlin.metadata.internal.protobuf.AbstractParser.checkMessageInitialized(AbstractParser.java:71)
    	at kotlin.metadata.internal.protobuf.AbstractParser.parseFrom(AbstractParser.java:209)
    	at kotlin.metadata.internal.protobuf.AbstractParser.parseFrom(AbstractParser.java:49)
    	at kotlin.metadata.internal.metadata.ProtoBuf$Class.parseFrom(ProtoBuf.java:10614)
    	at kotlin.metadata.internal.metadata.jvm.deserialization.JvmProtoBufUtil.readClassDataFrom(JvmProtoBufUtil.kt:37)
    	at kotlin.metadata.internal.metadata.jvm.deserialization.JvmProtoBufUtil.readClassDataFrom(JvmProtoBufUtil.kt:32)
    	at kotlin.metadata.jvm.internal.JvmReadUtils.readKmClass$kotlin_metadata_jvm(JvmReadUtils.kt:27)
    	at kotlin.metadata.jvm.KotlinClassMetadata$Class.<init>(KotlinClassMetadata.kt:95)
    	at kotlin.metadata.jvm.internal.JvmReadUtils.readMetadataImpl$kotlin_metadata_jvm(JvmReadUtils.kt:50)
    	... 5 more
    */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000k\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005*\u0001+\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0007\u0010\u0005J\u000f\u0010\b\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\b\u0010\u0005J\u000f\u0010\t\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\t\u0010\u0005J\u000f\u0010\n\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\n\u0010\u0005J\u000f\u0010\u000b\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u000b\u0010\u0005J\u000f\u0010\f\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\f\u0010\u0005J\u000f\u0010\r\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\r\u0010\u0005J\u000f\u0010\u000e\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u000e\u0010\u0005J\u000f\u0010\u000f\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u000f\u0010\u0005J\u000f\u0010\u0010\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0010\u0010\u0005J\u000f\u0010\u0011\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0011\u0010\u0005J\u000f\u0010\u0012\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0012\u0010\u0005J\u000f\u0010\u0013\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0013\u0010\u0005J\u000f\u0010\u0014\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0014\u0010\u0005J\u000f\u0010\u0015\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0015\u0010\u0005J\u0019\u0010\u0018\u001a\u00020\u00062\b\u0010\u0017\u001a\u0004\u0018\u00010\u0016H\u0014¢\u0006\u0004\b\u0018\u0010\u0019J\u000f\u0010\u001a\u001a\u00020\u0006H\u0014¢\u0006\u0004\b\u001a\u0010\u0005J\u000f\u0010\u001b\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u001b\u0010\u0005J\u000f\u0010\u001c\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u001c\u0010\u0005J\u000f\u0010\u001d\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u001d\u0010\u0005J\u000f\u0010\u001e\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u001e\u0010\u0005J\u000f\u0010\u001f\u001a\u00020\u0006H\u0014¢\u0006\u0004\b\u001f\u0010\u0005R\u0014\u0010\"\u001a\u00020 8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001e\u0010!R\u0014\u0010#\u001a\u00020 8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010!R\u0014\u0010$\u001a\u00020 8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001d\u0010!R\u001b\u0010*\u001a\u00020%8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b&\u0010'\u001a\u0004\b(\u0010)R\u0014\u0010.\u001a\u00020+8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b,\u0010-R\"\u00106\u001a\u00020/8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b0\u00101\u001a\u0004\b2\u00103\"\u0004\b4\u00105R\"\u0010>\u001a\u0002078\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b8\u00109\u001a\u0004\b:\u0010;\"\u0004\b<\u0010=R\"\u0010F\u001a\u00020?8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b@\u0010A\u001a\u0004\bB\u0010C\"\u0004\bD\u0010ER\"\u0010M\u001a\u00020G8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\b\u0010H\u001a\u0004\bI\u0010J\"\u0004\bK\u0010LR\u0016\u0010P\u001a\u00020N8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\t\u0010OR\u0016\u0010S\u001a\u00020Q8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0011\u0010RR\u0016\u0010U\u001a\u00020%8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0012\u0010T¨\u0006V"}, d2 = {"Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;", "Lio/didomi/sdk/n;", "Lio/didomi/sdk/O3;", "Lio/didomi/sdk/s6;", "<init>", "()V", "", "u", "l", InneractiveMediationDefs.GENDER_MALE, "E", "C", "B", "D", "A", "v", "w", b4.p, "o", "x", "y", "z", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "onStart", "c", "e", InneractiveMediationDefs.GENDER_FEMALE, DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "onDestroy", "Landroid/view/View$OnClickListener;", "Landroid/view/View$OnClickListener;", "saveClickListener", "agreeAllClickListener", "disagreeAllClickListener", "", "g", "Lkotlin/Lazy;", "r", "()Z", "shouldOpenVendors", "io/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity$a", "h", "Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity$a;", "backPressedCallback", "Lio/didomi/sdk/l7;", "i", "Lio/didomi/sdk/l7;", CampaignEx.JSON_KEY_AD_Q, "()Lio/didomi/sdk/l7;", "setPurposesModel", "(Lio/didomi/sdk/l7;)V", "purposesModel", "Lio/didomi/sdk/t8;", "j", "Lio/didomi/sdk/t8;", "t", "()Lio/didomi/sdk/t8;", "setVendorsModel", "(Lio/didomi/sdk/t8;)V", "vendorsModel", "Lio/didomi/sdk/D8;", CampaignEx.JSON_KEY_AD_K, "Lio/didomi/sdk/D8;", "s", "()Lio/didomi/sdk/D8;", "setUiProvider", "(Lio/didomi/sdk/D8;)V", "uiProvider", "Lio/didomi/sdk/I3;", "Lio/didomi/sdk/I3;", TtmlNode.TAG_P, "()Lio/didomi/sdk/I3;", "setNavigationManager", "(Lio/didomi/sdk/I3;)V", "navigationManager", "Lio/didomi/sdk/H0;", "Lio/didomi/sdk/H0;", "binding", "Lio/didomi/sdk/F2;", "Lio/didomi/sdk/F2;", "bindingPrimary", "Z", "lockFocus", "android_release"}, mv = {1, 8, 0})
public final class TVPreferencesDialogActivity extends AbstractActivityC1836n implements O3, InterfaceC1893s6 {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final View.OnClickListener f8733d = new View.OnClickListener() { // from class: io.didomi.sdk.preferences.ctv.l
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            TVPreferencesDialogActivity.c(this.a, view);
        }
    };

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final View.OnClickListener f8734e = new View.OnClickListener() { // from class: io.didomi.sdk.preferences.ctv.d
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            TVPreferencesDialogActivity.a(this.a, view);
        }
    };

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final View.OnClickListener f8735f = new View.OnClickListener() { // from class: io.didomi.sdk.preferences.ctv.k
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            TVPreferencesDialogActivity.b(this.a, view);
        }
    };

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Lazy f8736g = LazyKt__LazyJVMKt.lazy(new b());
    private final a h = new a();
    public C1824l7 i;
    public C1905t8 j;
    public D8 k;
    public I3 l;
    private H0 m;
    private F2 n;
    private boolean o;

    @Metadata(d1 = {"\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"io/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity$a", "Landroidx/activity/OnBackPressedCallback;", "", "handleOnBackPressed", "()V", "android_release"}, mv = {1, 8, 0})
    public static final class a extends OnBackPressedCallback {
        a() {
            super(true);
        }

        @Override // androidx.activity.OnBackPressedCallback
        public void handleOnBackPressed() {
            if (TVPreferencesDialogActivity.this.getSupportFragmentManager().getFragments().size() == 1) {
                TVPreferencesDialogActivity.this.p().b();
            } else {
                TVPreferencesDialogActivity.this.getSupportFragmentManager().popBackStack();
                TVPreferencesDialogActivity.this.m();
            }
        }
    }

    @Metadata(d1 = {"\u0000\b\n\u0002\u0010\u000b\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"", "a", "()Ljava/lang/Boolean;"}, mv = {1, 8, 0})
    static final class b extends Lambda implements Function0<Boolean> {
        b() {
            super(0);
        }

        /* JADX WARN: Removed duplicated region for block: B:19:0x003b  */
        /* JADX WARN: Removed duplicated region for block: B:20:0x003d  */
        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Boolean invoke() {
            /*
                r4 = this;
                int r0 = android.os.Build.VERSION.SDK_INT
                java.lang.String r1 = "OPEN_SUBSCREEN"
                r2 = 0
                r3 = 33
                if (r0 < r3) goto L25
                io.didomi.sdk.preferences.ctv.TVPreferencesDialogActivity r0 = io.didomi.drawable.preferences.ctv.TVPreferencesDialogActivity.this
                android.content.Intent r0 = r0.getIntent()
                if (r0 == 0) goto L20
                android.os.Bundle r0 = r0.getExtras()
                if (r0 == 0) goto L20
                java.lang.Class<io.didomi.sdk.Y5> r2 = io.didomi.drawable.Y5.class
                java.io.Serializable r0 = r0.getSerializable(r1, r2)
                r2 = r0
                io.didomi.sdk.Y5 r2 = (io.didomi.drawable.Y5) r2
            L20:
                io.didomi.sdk.Y5 r0 = io.didomi.drawable.Y5.Vendors
                if (r2 != r0) goto L3d
                goto L3b
            L25:
                io.didomi.sdk.preferences.ctv.TVPreferencesDialogActivity r0 = io.didomi.drawable.preferences.ctv.TVPreferencesDialogActivity.this
                android.content.Intent r0 = r0.getIntent()
                if (r0 == 0) goto L37
                android.os.Bundle r0 = r0.getExtras()
                if (r0 == 0) goto L37
                java.lang.Object r2 = r0.get(r1)
            L37:
                io.didomi.sdk.Y5 r0 = io.didomi.drawable.Y5.Vendors
                if (r2 != r0) goto L3d
            L3b:
                r0 = 1
                goto L3e
            L3d:
                r0 = 0
            L3e:
                java.lang.Boolean r0 = java.lang.Boolean.valueOf(r0)
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: io.didomi.sdk.preferences.ctv.TVPreferencesDialogActivity.b.invoke():java.lang.Boolean");
        }
    }

    private final void A() {
        F2 f2 = this.n;
        if (f2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("bindingPrimary");
            f2 = null;
        }
        Button updateAgreeButton$lambda$22 = f2.b;
        Intrinsics.checkNotNullExpressionValue(updateAgreeButton$lambda$22, "updateAgreeButton$lambda$22");
        int i = R.dimen.didomi_tv_button_padding;
        k9.a(updateAgreeButton$lambda$22, i, 0, i, 0, 10, null);
        updateAgreeButton$lambda$22.setOnClickListener(this.f8734e);
        updateAgreeButton$lambda$22.setOnKeyListener(new View.OnKeyListener() { // from class: io.didomi.sdk.preferences.ctv.i
            @Override // android.view.View.OnKeyListener
            public final boolean onKey(View view, int i2, KeyEvent keyEvent) {
                return TVPreferencesDialogActivity.a(view, i2, keyEvent);
            }
        });
        updateAgreeButton$lambda$22.setText(q().D());
    }

    private final void B() {
        F2 f2 = this.n;
        if (f2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("bindingPrimary");
            f2 = null;
        }
        Button updateDisagreeButton$lambda$18 = f2.c;
        Intrinsics.checkNotNullExpressionValue(updateDisagreeButton$lambda$18, "updateDisagreeButton$lambda$18");
        int i = R.dimen.didomi_tv_button_padding;
        k9.a(updateDisagreeButton$lambda$18, i, 0, i, 0, 10, null);
        updateDisagreeButton$lambda$18.setOnClickListener(this.f8735f);
        updateDisagreeButton$lambda$18.setOnKeyListener(new View.OnKeyListener() { // from class: io.didomi.sdk.preferences.ctv.h
            @Override // android.view.View.OnKeyListener
            public final boolean onKey(View view, int i2, KeyEvent keyEvent) {
                return TVPreferencesDialogActivity.b(view, i2, keyEvent);
            }
        });
        updateDisagreeButton$lambda$18.setText(q().S());
    }

    private final void C() {
        F2 f2 = this.n;
        if (f2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("bindingPrimary");
            f2 = null;
        }
        Button updatePurposeTab$lambda$16 = f2.f8216e;
        Intrinsics.checkNotNullExpressionValue(updatePurposeTab$lambda$16, "updatePurposeTab$lambda$16");
        k9.a(updatePurposeTab$lambda$16, R.dimen.didomi_tv_tab_padding_start, 0, R.dimen.didomi_tv_tab_padding_end, 0, 10, null);
        updatePurposeTab$lambda$16.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: io.didomi.sdk.preferences.ctv.g
            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view, boolean z) {
                TVPreferencesDialogActivity.a(this.a, view, z);
            }
        });
        updatePurposeTab$lambda$16.setOnKeyListener(new View.OnKeyListener() { // from class: io.didomi.sdk.preferences.ctv.a
            @Override // android.view.View.OnKeyListener
            public final boolean onKey(View view, int i, KeyEvent keyEvent) {
                return TVPreferencesDialogActivity.a(this.a, view, i, keyEvent);
            }
        });
        updatePurposeTab$lambda$16.setText(q().J1());
    }

    private final void D() {
        F2 f2 = this.n;
        if (f2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("bindingPrimary");
            f2 = null;
        }
        Button updateSaveButton$lambda$20 = f2.f8215d;
        Intrinsics.checkNotNullExpressionValue(updateSaveButton$lambda$20, "updateSaveButton$lambda$20");
        int i = R.dimen.didomi_tv_button_padding;
        k9.a(updateSaveButton$lambda$20, i, 0, i, 0, 10, null);
        updateSaveButton$lambda$20.setOnClickListener(this.f8733d);
        updateSaveButton$lambda$20.setOnKeyListener(new View.OnKeyListener() { // from class: io.didomi.sdk.preferences.ctv.c
            @Override // android.view.View.OnKeyListener
            public final boolean onKey(View view, int i2, KeyEvent keyEvent) {
                return TVPreferencesDialogActivity.c(view, i2, keyEvent);
            }
        });
        updateSaveButton$lambda$20.setText(q().q0());
    }

    private final void E() {
        F2 f2 = this.n;
        if (f2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("bindingPrimary");
            f2 = null;
        }
        Button updateVendorTab$lambda$13 = f2.f8217f;
        Intrinsics.checkNotNullExpressionValue(updateVendorTab$lambda$13, "updateVendorTab$lambda$13");
        k9.a(updateVendorTab$lambda$13, R.dimen.didomi_tv_tab_padding_start, 0, R.dimen.didomi_tv_tab_padding_end, 0, 10, null);
        updateVendorTab$lambda$13.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: io.didomi.sdk.preferences.ctv.j
            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view, boolean z) {
                TVPreferencesDialogActivity.b(this.a, view, z);
            }
        });
        updateVendorTab$lambda$13.setOnKeyListener(new View.OnKeyListener() { // from class: io.didomi.sdk.preferences.ctv.e
            @Override // android.view.View.OnKeyListener
            public final boolean onKey(View view, int i, KeyEvent keyEvent) {
                return TVPreferencesDialogActivity.b(this.a, view, i, keyEvent);
            }
        });
        updateVendorTab$lambda$13.setText(t().S0());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(TVPreferencesDialogActivity this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.q().Y0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(TVPreferencesDialogActivity this$0, View view, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (this$0.o) {
            return;
        }
        if (!z) {
            F2 f2 = this$0.n;
            if (f2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("bindingPrimary");
                f2 = null;
            }
            if (!f2.f8217f.isFocused()) {
                this$0.v();
                return;
            }
        }
        if (z) {
            this$0.x();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean a(View view, int i, KeyEvent keyEvent) {
        return i == 22;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean a(TVPreferencesDialogActivity this$0, View view, int i, KeyEvent keyEvent) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (i != 22) {
            return false;
        }
        if (keyEvent.getAction() == 1) {
            this$0.n();
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(TVPreferencesDialogActivity this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.l();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(TVPreferencesDialogActivity this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.q().b1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(TVPreferencesDialogActivity this$0, View view, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (this$0.o) {
            return;
        }
        if (!z) {
            F2 f2 = this$0.n;
            if (f2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("bindingPrimary");
                f2 = null;
            }
            if (!f2.f8216e.isFocused()) {
                this$0.w();
                return;
            }
        }
        if (z) {
            this$0.y();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean b(View view, int i, KeyEvent keyEvent) {
        return i == 22;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean b(TVPreferencesDialogActivity this$0, View view, int i, KeyEvent keyEvent) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (i != 22) {
            return false;
        }
        if (keyEvent.getAction() == 1) {
            this$0.o();
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c(TVPreferencesDialogActivity this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.q().h1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean c(View view, int i, KeyEvent keyEvent) {
        return i == 22;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void l() {
        List<Fragment> fragments = getSupportFragmentManager().getFragments();
        Intrinsics.checkNotNullExpressionValue(fragments, "supportFragmentManager.fragments");
        Fragment fragment = (Fragment) p.lastOrNull((List) fragments);
        if (fragment == 0) {
            return;
        }
        if (fragment instanceof C8) {
            ((C8) fragment).a();
            return;
        }
        View view = fragment.getView();
        Intrinsics.checkNotNull(view, "null cannot be cast to non-null type android.view.ViewGroup");
        ViewGroup viewGroup = (ViewGroup) view;
        viewGroup.setDescendantFocusability(131072);
        viewGroup.requestFocus();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void m() {
        if (getSupportFragmentManager().getFragments().isEmpty()) {
            finish();
        }
    }

    private final void n() {
        this.o = true;
        F2 f2 = this.n;
        if (f2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("bindingPrimary");
            f2 = null;
        }
        f2.f8216e.setSelected(true);
        F2 f22 = this.n;
        if (f22 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("bindingPrimary");
            f22 = null;
        }
        Button button = f22.f8217f;
        button.setEnabled(false);
        button.setSelected(false);
        Fragment fragmentFindFragmentByTag = getSupportFragmentManager().findFragmentByTag("TVPurposesFragment");
        C1804j7 c1804j7 = fragmentFindFragmentByTag instanceof C1804j7 ? (C1804j7) fragmentFindFragmentByTag : null;
        if (c1804j7 != null) {
            c1804j7.a();
        }
    }

    private final void o() {
        this.o = true;
        F2 f2 = this.n;
        if (f2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("bindingPrimary");
            f2 = null;
        }
        Button button = f2.f8216e;
        button.setEnabled(false);
        button.setSelected(false);
        F2 f22 = this.n;
        if (f22 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("bindingPrimary");
            f22 = null;
        }
        f22.f8217f.setSelected(true);
        Fragment fragmentFindFragmentByTag = getSupportFragmentManager().findFragmentByTag("io.didomi.dialog.VENDORS");
        C1885r8 c1885r8 = fragmentFindFragmentByTag instanceof C1885r8 ? (C1885r8) fragmentFindFragmentByTag : null;
        if (c1885r8 != null) {
            c1885r8.a();
        }
    }

    private final boolean r() {
        return ((Boolean) this.f8736g.getValue()).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void u() {
        int i;
        int size = getSupportFragmentManager().getFragments().size();
        boolean z = size > 1;
        ViewGroup viewGroup = (ViewGroup) findViewById(R.id.include_ctv_preferences_menu);
        viewGroup.setFocusable(z);
        viewGroup.setFocusableInTouchMode(z);
        if (z) {
            viewGroup.clearFocus();
            g();
            i = 393216;
        } else {
            h();
            i = 131072;
        }
        viewGroup.setDescendantFocusability(i);
        if (size == 1) {
            l();
        } else if (z) {
            viewGroup.post(new Runnable() { // from class: io.didomi.sdk.preferences.ctv.b
                @Override // java.lang.Runnable
                public final void run() {
                    TVPreferencesDialogActivity.b(this.a);
                }
            });
        }
    }

    private final void v() {
        q().e2();
    }

    private final void w() {
        t().T0();
    }

    private final void x() {
        z();
        Fragment fragmentFindFragmentByTag = getSupportFragmentManager().findFragmentByTag("TVPurposesFragment");
        if (fragmentFindFragmentByTag == null || !fragmentFindFragmentByTag.isVisible()) {
            getSupportFragmentManager().beginTransaction().replace(R.id.container_ctv_preferences_primary, new C1804j7(), "TVPurposesFragment").commit();
        }
    }

    private final void y() {
        z();
        Fragment fragmentFindFragmentByTag = getSupportFragmentManager().findFragmentByTag("io.didomi.dialog.VENDORS");
        if (fragmentFindFragmentByTag == null || !fragmentFindFragmentByTag.isVisible()) {
            getSupportFragmentManager().beginTransaction().replace(R.id.container_ctv_preferences_primary, new C1885r8(), "io.didomi.dialog.VENDORS").commit();
        }
    }

    private final void z() {
        F2 f2 = this.n;
        if (f2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("bindingPrimary");
            f2 = null;
        }
        f2.f8216e.setSelected(false);
        f2.f8217f.setSelected(false);
    }

    @Override // io.didomi.drawable.O3
    public void c() {
        finish();
    }

    @Override // io.didomi.drawable.InterfaceC1893s6
    public void d() {
        this.o = false;
        F2 f2 = this.n;
        F2 f22 = null;
        if (f2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("bindingPrimary");
            f2 = null;
        }
        Button button = f2.f8217f;
        button.setEnabled(true);
        button.requestFocus();
        F2 f23 = this.n;
        if (f23 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("bindingPrimary");
        } else {
            f22 = f23;
        }
        f22.f8216e.setEnabled(true);
    }

    @Override // io.didomi.drawable.InterfaceC1893s6
    public void e() {
        finish();
    }

    @Override // io.didomi.drawable.O3
    public void f() {
        this.o = false;
        F2 f2 = this.n;
        F2 f22 = null;
        if (f2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("bindingPrimary");
            f2 = null;
        }
        Button button = f2.f8216e;
        button.setEnabled(true);
        button.requestFocus();
        F2 f23 = this.n;
        if (f23 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("bindingPrimary");
        } else {
            f22 = f23;
        }
        f22.f8217f.setEnabled(true);
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        Didomi.Companion.getInstance().getComponent$android_release().a(this);
        super.onCreate(bundle);
        H0 h0A = H0.a(getLayoutInflater());
        Intrinsics.checkNotNullExpressionValue(h0A, "inflate(layoutInflater)");
        this.m = h0A;
        H0 h0 = null;
        if (h0A == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            h0A = null;
        }
        F2 f2A = F2.a(h0A.getRoot());
        Intrinsics.checkNotNullExpressionValue(f2A, "bind(binding.root)");
        this.n = f2A;
        getWindow().setBackgroundDrawable(new InsetDrawable((Drawable) new ColorDrawable(0), 0, 0, 0, 0));
        H0 h02 = this.m;
        if (h02 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            h02 = null;
        }
        setContentView(h02.getRoot());
        H0 h03 = this.m;
        if (h03 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            h0 = h03;
        }
        View view = h0.f8235d;
        Intrinsics.checkNotNullExpressionValue(view, "binding.viewCtvPreferencesBackground");
        a(view);
        getOnBackPressedDispatcher().addCallback(this, this.h);
        getSupportFragmentManager().addOnBackStackChangedListener(new FragmentManager.OnBackStackChangedListener() { // from class: io.didomi.sdk.preferences.ctv.f
            @Override // androidx.fragment.app.FragmentManager.OnBackStackChangedListener
            public final void onBackStackChanged() {
                this.a.u();
            }
        });
        C1824l7 c1824l7Q = q();
        c1824l7Q.x1();
        c1824l7Q.g1();
        c1824l7Q.V0();
        c1824l7Q.P0();
        C();
        E();
        A();
        D();
        B();
        if (r()) {
            d();
        } else {
            f();
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        F2 f2 = this.n;
        if (f2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("bindingPrimary");
            f2 = null;
        }
        f2.f8216e.setOnFocusChangeListener(null);
        f2.f8217f.setOnFocusChangeListener(null);
        s().h();
        this.o = false;
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onStart() {
        super.onStart();
        WindowManager.LayoutParams attributes = getWindow().getAttributes();
        attributes.width = -1;
        attributes.height = -1;
    }

    public final I3 p() {
        I3 i3 = this.l;
        if (i3 != null) {
            return i3;
        }
        Intrinsics.throwUninitializedPropertyAccessException("navigationManager");
        return null;
    }

    public final C1824l7 q() {
        C1824l7 c1824l7 = this.i;
        if (c1824l7 != null) {
            return c1824l7;
        }
        Intrinsics.throwUninitializedPropertyAccessException("purposesModel");
        return null;
    }

    public final D8 s() {
        D8 d8 = this.k;
        if (d8 != null) {
            return d8;
        }
        Intrinsics.throwUninitializedPropertyAccessException("uiProvider");
        return null;
    }

    public final C1905t8 t() {
        C1905t8 c1905t8 = this.j;
        if (c1905t8 != null) {
            return c1905t8;
        }
        Intrinsics.throwUninitializedPropertyAccessException("vendorsModel");
        return null;
    }
}
