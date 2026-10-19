package io.didomi.drawable;

import android.content.res.ColorStateList;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.method.LinkMovementMethod;
import android.text.method.MovementMethod;
import android.text.style.UnderlineSpan;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.view.ViewTreeObserver;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatButton;
import androidx.appcompat.widget.AppCompatImageButton;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.LifecycleOwner;
import com.fyber.inneractive.sdk.external.InneractiveMediationDefs;
import com.json.b4;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import io.didomi.drawable.C1806k;
import io.didomi.drawable.U;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.text.StringsKt__StringsJVMKt;

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
@Metadata(d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B9\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\f¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0011\u001a\u00020\u0010H\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0010H\u0002¢\u0006\u0004\b\u0013\u0010\u0012J\u0019\u0010\u0016\u001a\u00020\u00102\b\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0002¢\u0006\u0004\b\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\u0010H\u0002¢\u0006\u0004\b\u0018\u0010\u0012J\u000f\u0010\u0019\u001a\u00020\u0010H\u0002¢\u0006\u0004\b\u0019\u0010\u0012J\u000f\u0010\u001a\u001a\u00020\u0010H\u0002¢\u0006\u0004\b\u001a\u0010\u0012J\u0017\u0010\u0016\u001a\u00020\u00102\u0006\u0010\u001c\u001a\u00020\u001bH\u0002¢\u0006\u0004\b\u0016\u0010\u001dJ\u000f\u0010\u001e\u001a\u00020\u0010H\u0002¢\u0006\u0004\b\u001e\u0010\u0012J\u000f\u0010\u0016\u001a\u00020\u0010H\u0002¢\u0006\u0004\b\u0016\u0010\u0012J\u000f\u0010\u001f\u001a\u00020\u0010H\u0002¢\u0006\u0004\b\u001f\u0010\u0012J\u000f\u0010 \u001a\u00020\u0010H\u0002¢\u0006\u0004\b \u0010\u0012J\u000f\u0010!\u001a\u00020\u0010H\u0002¢\u0006\u0004\b!\u0010\u0012J\u000f\u0010\"\u001a\u00020\u0010H\u0002¢\u0006\u0004\b\"\u0010\u0012J\u000f\u0010#\u001a\u00020\u0010H\u0002¢\u0006\u0004\b#\u0010\u0012J\u000f\u0010$\u001a\u00020\u0010H\u0002¢\u0006\u0004\b$\u0010\u0012J\r\u0010%\u001a\u00020\u0010¢\u0006\u0004\b%\u0010\u0012R\u0016\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010&R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001e\u0010'R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010(R\u0014\u0010\t\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b)\u0010*R\u0014\u0010\u000b\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b+\u0010,R\u0014\u0010/\u001a\u00020-8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b#\u0010.R\"\u00104\u001a\u0002008\u0000@\u0000X\u0080.¢\u0006\u0012\n\u0004\b\"\u00101\u001a\u0004\b+\u00102\"\u0004\b\u0016\u00103R\"\u00109\u001a\u0002058\u0000@\u0000X\u0080.¢\u0006\u0012\n\u0004\b\u001a\u00106\u001a\u0004\b)\u00107\"\u0004\b\u0016\u00108¨\u0006:"}, d2 = {"Lio/didomi/sdk/Q;", "", "Landroidx/fragment/app/FragmentActivity;", "activity", "Lio/didomi/sdk/N0;", "binding", "Lio/didomi/sdk/U;", "model", "Lio/didomi/sdk/z8;", "themeProvider", "Lio/didomi/sdk/I3;", "navigationManager", "Landroidx/lifecycle/LifecycleOwner;", "lifecycleOwner", "<init>", "(Landroidx/fragment/app/FragmentActivity;Lio/didomi/sdk/N0;Lio/didomi/sdk/U;Lio/didomi/sdk/z8;Lio/didomi/sdk/I3;Landroidx/lifecycle/LifecycleOwner;)V", "", TtmlNode.TAG_P, "()V", InneractiveMediationDefs.GENDER_MALE, "", "label", "a", "(Ljava/lang/String;)V", "l", b4.p, "h", "Lio/didomi/sdk/k$i$a;", "format", "(Lio/didomi/sdk/k$i$a;)V", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "c", "o", CampaignEx.JSON_KEY_AD_K, "g", InneractiveMediationDefs.GENDER_FEMALE, "i", "j", "Landroidx/fragment/app/FragmentActivity;", "Lio/didomi/sdk/N0;", "Lio/didomi/sdk/U;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lio/didomi/sdk/z8;", "e", "Lio/didomi/sdk/I3;", "Landroid/view/ViewTreeObserver$OnScrollChangedListener;", "Landroid/view/ViewTreeObserver$OnScrollChangedListener;", "scrollListener", "Lio/didomi/sdk/s2;", "Lio/didomi/sdk/s2;", "()Lio/didomi/sdk/s2;", "(Lio/didomi/sdk/s2;)V", "headerBinding", "Lio/didomi/sdk/r2;", "Lio/didomi/sdk/r2;", "()Lio/didomi/sdk/r2;", "(Lio/didomi/sdk/r2;)V", "footerBinding", "android_release"}, mv = {1, 8, 0})
public final class Q {
    private final FragmentActivity a;
    private final N0 b;
    private final U c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final C1965z8 f8335d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final I3 f8336e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final ViewTreeObserver.OnScrollChangedListener f8337f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public C1889s2 f8338g;
    public C1879r2 h;

    @Metadata(d1 = {"\u0000\u000e\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"", "url", "", "a", "(Ljava/lang/String;)Ljava/lang/Boolean;"}, mv = {1, 8, 0})
    static final class a extends Lambda implements Function1<String, Boolean> {
        a() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean invoke(String url) {
            boolean z;
            Intrinsics.checkNotNullParameter(url, "url");
            if (Q.this.c.a(url)) {
                Q.this.g();
                z = true;
            } else {
                z = false;
            }
            return Boolean.valueOf(z);
        }
    }

    public Q(FragmentActivity fragmentActivity, N0 binding, U model, C1965z8 themeProvider, I3 navigationManager, LifecycleOwner lifecycleOwner) {
        ViewStub viewStub;
        ViewStub viewStub2;
        Intrinsics.checkNotNullParameter(binding, "binding");
        Intrinsics.checkNotNullParameter(model, "model");
        Intrinsics.checkNotNullParameter(themeProvider, "themeProvider");
        Intrinsics.checkNotNullParameter(navigationManager, "navigationManager");
        Intrinsics.checkNotNullParameter(lifecycleOwner, "lifecycleOwner");
        this.a = fragmentActivity;
        this.b = binding;
        this.c = model;
        this.f8335d = themeProvider;
        this.f8336e = navigationManager;
        ViewTreeObserver.OnScrollChangedListener onScrollChangedListener = new ViewTreeObserver.OnScrollChangedListener() { // from class: io.didomi.sdk.ic
            @Override // android.view.ViewTreeObserver.OnScrollChangedListener
            public final void onScrollChanged() {
                Q.d(this.a);
            }
        };
        this.f8337f = onScrollChangedListener;
        if (themeProvider.h().n()) {
            viewStub = binding.h;
            Intrinsics.checkNotNullExpressionValue(viewStub, "{\n            binding.st…iceHeaderSticky\n        }");
        } else {
            viewStub = binding.f8303g;
            Intrinsics.checkNotNullExpressionValue(viewStub, "{\n            binding.stubNoticeHeader\n        }");
        }
        viewStub.setOnInflateListener(new ViewStub.OnInflateListener() { // from class: io.didomi.sdk.rc
            @Override // android.view.ViewStub.OnInflateListener
            public final void onInflate(ViewStub viewStub3, View view) {
                Q.a(this.a, viewStub3, view);
            }
        });
        viewStub.inflate();
        if (themeProvider.h().n()) {
            binding.i.getViewTreeObserver().addOnScrollChangedListener(onScrollChangedListener);
            viewStub2 = binding.f8302f;
            Intrinsics.checkNotNullExpressionValue(viewStub2, "{\n            // Add scr…iceFooterSticky\n        }");
        } else {
            viewStub2 = binding.f8301e;
            Intrinsics.checkNotNullExpressionValue(viewStub2, "{\n            binding.stubNoticeFooter\n        }");
        }
        viewStub2.setOnInflateListener(new ViewStub.OnInflateListener() { // from class: io.didomi.sdk.mc
            @Override // android.view.ViewStub.OnInflateListener
            public final void onInflate(ViewStub viewStub3, View view) {
                Q.b(this.a, viewStub3, view);
            }
        });
        viewStub2.inflate();
        ImageView imageView = binding.c;
        Intrinsics.checkNotNullExpressionValue(imageView, "binding.imageNoticeLogo");
        C1810k3.a(imageView, lifecycleOwner, model.n());
        p();
        m();
        l();
        c();
        o();
        n();
        if (model.y() && model.A()) {
            d().f8747f.setMaxElementsWrap(2);
        }
        if (themeProvider.u()) {
            if (themeProvider.h().n()) {
                binding.getRoot().post(new Runnable() { // from class: io.didomi.sdk.nc
                    @Override // java.lang.Runnable
                    public final void run() {
                        Q.a(this.a);
                    }
                });
            }
        } else {
            LinearLayout root = binding.getRoot();
            Intrinsics.checkNotNullExpressionValue(root, "binding.root");
            k9.a(root, 0, R.dimen.didomi_bottom_sheet_top_margin, 0, 0);
        }
    }

    private final void a() {
        AppCompatImageButton displayDisagreeButtonAsCross$lambda$19 = e().b;
        Intrinsics.checkNotNullExpressionValue(displayDisagreeButtonAsCross$lambda$19, "displayDisagreeButtonAsCross$lambda$19");
        j9.a(displayDisagreeButtonAsCross$lambda$19, this.c.c());
        if (this.f8335d.h().n()) {
            k9.a(displayDisagreeButtonAsCross$lambda$19);
        }
        C1820l3.a(displayDisagreeButtonAsCross$lambda$19, this.f8335d.j());
        displayDisagreeButtonAsCross$lambda$19.setOnClickListener(new View.OnClickListener() { // from class: io.didomi.sdk.qc
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                Q.b(this.a, view);
            }
        });
        displayDisagreeButtonAsCross$lambda$19.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(Q this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.f8337f.onScrollChanged();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(Q this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.c.D();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(Q this$0, ViewStub viewStub, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        C1889s2 c1889s2A = C1889s2.a(view);
        Intrinsics.checkNotNullExpressionValue(c1889s2A, "bind(inflated)");
        this$0.a(c1889s2A);
    }

    private final void a(C1806k.i.a aVar) {
        AppCompatImageButton appCompatImageButton = e().b;
        Intrinsics.checkNotNullExpressionValue(appCompatImageButton, "headerBinding.buttonNoticeHeaderDisagreeCross");
        appCompatImageButton.setVisibility(8);
        AppCompatButton appCompatButton = e().c;
        Intrinsics.checkNotNullExpressionValue(appCompatButton, "headerBinding.buttonNoticeHeaderDisagreeLink");
        appCompatButton.setVisibility(8);
        AppCompatButton displayDisagreeButton$lambda$15 = d().c;
        Intrinsics.checkNotNullExpressionValue(displayDisagreeButton$lambda$15, "displayDisagreeButton$lambda$15");
        j9.a(displayDisagreeButton$lambda$15, this.c.a(false));
        C1955y8.a(displayDisagreeButton$lambda$15, this.f8335d.h().a(aVar));
        if (this.f8335d.h().n()) {
            k9.a(displayDisagreeButton$lambda$15);
        }
        displayDisagreeButton$lambda$15.setOnClickListener(new View.OnClickListener() { // from class: io.didomi.sdk.sc
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                Q.a(this.a, view);
            }
        });
        displayDisagreeButton$lambda$15.setText(this.c.b(false));
        displayDisagreeButton$lambda$15.setVisibility(0);
    }

    private final void a(String str) {
        if (str == null || StringsKt__StringsJVMKt.isBlank(str)) {
            AppCompatButton appCompatButton = this.b.b;
            Intrinsics.checkNotNullExpressionValue(appCompatButton, "binding.buttonNoticeVendorLink");
            appCompatButton.setVisibility(8);
            return;
        }
        AppCompatButton displayNoticeVendorsLink$lambda$11 = this.b.b;
        Intrinsics.checkNotNullExpressionValue(displayNoticeVendorsLink$lambda$11, "displayNoticeVendorsLink$lambda$11");
        j9.a(displayNoticeVendorsLink$lambda$11, str, this.c.o(), null, false, null, 0, null, null, 252, null);
        C1955y8.a(displayNoticeVendorsLink$lambda$11, this.f8335d.h().f());
        C1866q.a(displayNoticeVendorsLink$lambda$11, 0, 1, null);
        SpannableString spannableString = new SpannableString(str);
        spannableString.setSpan(new UnderlineSpan(), 0, spannableString.length(), 33);
        displayNoticeVendorsLink$lambda$11.setText(spannableString);
        displayNoticeVendorsLink$lambda$11.setVisibility(0);
        displayNoticeVendorsLink$lambda$11.setOnClickListener(new View.OnClickListener() { // from class: io.didomi.sdk.oc
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                Q.e(this.a, view);
            }
        });
    }

    private final void b() {
        AppCompatButton displayDisagreeButtonAsLink$lambda$17 = e().c;
        Intrinsics.checkNotNullExpressionValue(displayDisagreeButtonAsLink$lambda$17, "displayDisagreeButtonAsLink$lambda$17");
        j9.a(displayDisagreeButtonAsLink$lambda$17, this.c.a(true));
        C1955y8.a(displayDisagreeButtonAsLink$lambda$17, this.f8335d.h().g());
        if (this.f8335d.h().n()) {
            k9.a(displayDisagreeButtonAsLink$lambda$17);
        }
        displayDisagreeButtonAsLink$lambda$17.setOnClickListener(new View.OnClickListener() { // from class: io.didomi.sdk.pc
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                Q.c(this.a, view);
            }
        });
        C1866q.a(displayDisagreeButtonAsLink$lambda$17, 0, 1, null);
        displayDisagreeButtonAsLink$lambda$17.setText(this.c.b(true));
        displayDisagreeButtonAsLink$lambda$17.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(Q this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.c.D();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(Q this$0, ViewStub viewStub, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        C1879r2 c1879r2A = C1879r2.a(view);
        Intrinsics.checkNotNullExpressionValue(c1879r2A, "bind(inflated)");
        this$0.a(c1879r2A);
    }

    private final void c() {
        AppCompatButton displayLearnMoreButton$lambda$21 = d().f8745d;
        if (this.c.z()) {
            Intrinsics.checkNotNullExpressionValue(displayLearnMoreButton$lambda$21, "displayLearnMoreButton$lambda$21");
            displayLearnMoreButton$lambda$21.setVisibility(8);
            return;
        }
        Intrinsics.checkNotNullExpressionValue(displayLearnMoreButton$lambda$21, "displayLearnMoreButton$lambda$21");
        j9.a(displayLearnMoreButton$lambda$21, this.c.k());
        C1955y8.a(displayLearnMoreButton$lambda$21, this.f8335d.h().i());
        displayLearnMoreButton$lambda$21.setOnClickListener(new View.OnClickListener() { // from class: io.didomi.sdk.kc
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                Q.d(this.a, view);
            }
        });
        displayLearnMoreButton$lambda$21.setText(this.c.l());
        displayLearnMoreButton$lambda$21.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c(Q this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.c.D();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(Q this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        ScrollView scrollView = this$0.b.f8300d;
        Intrinsics.checkNotNullExpressionValue(scrollView, "binding.scrollNotice");
        TextView textView = this$0.b.i;
        Intrinsics.checkNotNullExpressionValue(textView, "binding.textNoticeContent");
        if (C1942x5.a(scrollView, textView)) {
            C1879r2 c1879r2D = this$0.d();
            AppCompatButton buttonNoticeFooterAgree = c1879r2D.b;
            Intrinsics.checkNotNullExpressionValue(buttonNoticeFooterAgree, "buttonNoticeFooterAgree");
            k9.b(buttonNoticeFooterAgree);
            AppCompatButton buttonNoticeFooterDisagree = c1879r2D.c;
            Intrinsics.checkNotNullExpressionValue(buttonNoticeFooterDisagree, "buttonNoticeFooterDisagree");
            k9.b(buttonNoticeFooterDisagree);
            C1889s2 c1889s2E = this$0.e();
            AppCompatImageButton buttonNoticeHeaderDisagreeCross = c1889s2E.b;
            Intrinsics.checkNotNullExpressionValue(buttonNoticeHeaderDisagreeCross, "buttonNoticeHeaderDisagreeCross");
            k9.b(buttonNoticeHeaderDisagreeCross);
            AppCompatButton buttonNoticeHeaderDisagreeLink = c1889s2E.c;
            Intrinsics.checkNotNullExpressionValue(buttonNoticeHeaderDisagreeLink, "buttonNoticeHeaderDisagreeLink");
            k9.b(buttonNoticeHeaderDisagreeLink);
            this$0.j();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(Q this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.i();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e(Q this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.g();
    }

    private final void f() {
        this.c.F();
        this.f8336e.a(this.a, Y5.SensitivePersonalInfo);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void f(Q this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.c.C();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void g() {
        this.c.G();
        this.f8336e.a(this.a, Y5.Vendors);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void g(Q this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.f();
    }

    private final void h() {
        AppCompatButton appCompatButton = d().c;
        Intrinsics.checkNotNullExpressionValue(appCompatButton, "footerBinding.buttonNoticeFooterDisagree");
        appCompatButton.setVisibility(8);
    }

    private final void i() {
        this.c.E();
        I3.a(this.f8336e, this.a, null, 2, null);
    }

    private final void k() {
        ImageView imageView = this.b.c;
        Intrinsics.checkNotNullExpressionValue(imageView, "binding.imageNoticeLogo");
        if (imageView.getVisibility() == 0) {
            ImageView imageView2 = this.b.c;
            Intrinsics.checkNotNullExpressionValue(imageView2, "binding.imageNoticeLogo");
            imageView2.setPadding(0, 0, 0, 0);
            return;
        }
        TextView textView = this.b.j;
        Intrinsics.checkNotNullExpressionValue(textView, "binding.textNoticeTitle");
        if (textView.getVisibility() == 0) {
            ViewGroup.LayoutParams layoutParams = this.b.j.getLayoutParams();
            Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
            ((ViewGroup.MarginLayoutParams) ((ConstraintLayout.LayoutParams) layoutParams)).topMargin = 0;
            return;
        }
        TextView textView2 = this.b.i;
        Intrinsics.checkNotNullExpressionValue(textView2, "binding.textNoticeContent");
        if (textView2.getVisibility() == 0) {
            ViewGroup.LayoutParams layoutParams2 = this.b.i.getLayoutParams();
            Intrinsics.checkNotNull(layoutParams2, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
            ((ViewGroup.MarginLayoutParams) ((ConstraintLayout.LayoutParams) layoutParams2)).topMargin = 0;
        }
    }

    private final void l() {
        AppCompatButton setupAgreeButton$lambda$13 = d().b;
        if (this.c.z()) {
            Intrinsics.checkNotNullExpressionValue(setupAgreeButton$lambda$13, "setupAgreeButton$lambda$13");
            setupAgreeButton$lambda$13.setVisibility(8);
            return;
        }
        Intrinsics.checkNotNullExpressionValue(setupAgreeButton$lambda$13, "setupAgreeButton$lambda$13");
        j9.a(setupAgreeButton$lambda$13, this.c.a());
        C1955y8.a(setupAgreeButton$lambda$13, this.f8335d.h().h());
        if (this.f8335d.h().n()) {
            k9.a(setupAgreeButton$lambda$13);
        }
        setupAgreeButton$lambda$13.setOnClickListener(new View.OnClickListener() { // from class: io.didomi.sdk.lc
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                Q.f(this.a, view);
            }
        });
        setupAgreeButton$lambda$13.setText(this.c.b());
    }

    private final void m() {
        if (this.c.z()) {
            TextView setupContentText$lambda$7 = this.b.i;
            Intrinsics.checkNotNullExpressionValue(setupContentText$lambda$7, "setupContentText$lambda$7");
            C1955y8.a(setupContentText$lambda$7, L0.NOTICE_DESCRIPTION, this.f8335d);
            Spannable spannableA = T5.a(V5.k(this.c.w()), this.f8335d.h().e());
            ColorStateList linkTextColors = setupContentText$lambda$7.getLinkTextColors();
            Intrinsics.checkNotNullExpressionValue(linkTextColors, "linkTextColors");
            setupContentText$lambda$7.setText(T5.a(spannableA, setupContentText$lambda$7, linkTextColors));
            return;
        }
        U.NoticeAndPartnersProperties noticeAndPartnersPropertiesR = this.c.r();
        MovementMethod c1886s = noticeAndPartnersPropertiesR.getPartnersLinkInText() ? new C1886s(new a()) : null;
        a(noticeAndPartnersPropertiesR.getPartnersButtonText());
        TextView setupContentText$lambda$8 = this.b.i;
        Intrinsics.checkNotNullExpressionValue(setupContentText$lambda$8, "setupContentText$lambda$8");
        C1955y8.a(setupContentText$lambda$8, L0.NOTICE_DESCRIPTION, this.f8335d);
        if (c1886s == null) {
            c1886s = LinkMovementMethod.getInstance();
        }
        setupContentText$lambda$8.setMovementMethod(c1886s);
        Spannable spannableA2 = T5.a(V5.k(noticeAndPartnersPropertiesR.getNoticeText()), this.f8335d.h().e());
        ColorStateList linkTextColors2 = setupContentText$lambda$8.getLinkTextColors();
        Intrinsics.checkNotNullExpressionValue(linkTextColors2, "linkTextColors");
        setupContentText$lambda$8.setText(T5.a(spannableA2, setupContentText$lambda$8, linkTextColors2));
    }

    private final void n() {
        if (this.c.z()) {
            a(C1806k.i.a.PRIMARY);
            return;
        }
        if (this.c.e() == C1806k.i.a.NONE) {
            h();
        } else {
            a(this.c.e());
        }
        if (this.c.f()) {
            a();
            k();
        } else {
            AppCompatImageButton appCompatImageButton = e().b;
            Intrinsics.checkNotNullExpressionValue(appCompatImageButton, "headerBinding.buttonNoticeHeaderDisagreeCross");
            appCompatImageButton.setVisibility(8);
        }
        if (this.c.g()) {
            b();
            k();
        } else {
            AppCompatButton appCompatButton = e().c;
            Intrinsics.checkNotNullExpressionValue(appCompatButton, "headerBinding.buttonNoticeHeaderDisagreeLink");
            appCompatButton.setVisibility(8);
        }
    }

    private final void o() {
        AppCompatButton setupManageSpiChoicesButton$lambda$23 = d().f8746e;
        if (!this.c.h()) {
            Intrinsics.checkNotNullExpressionValue(setupManageSpiChoicesButton$lambda$23, "setupManageSpiChoicesButton$lambda$23");
            setupManageSpiChoicesButton$lambda$23.setVisibility(8);
            return;
        }
        Intrinsics.checkNotNullExpressionValue(setupManageSpiChoicesButton$lambda$23, "setupManageSpiChoicesButton$lambda$23");
        C1955y8.a(setupManageSpiChoicesButton$lambda$23, this.f8335d.h().i());
        setupManageSpiChoicesButton$lambda$23.setOnClickListener(new View.OnClickListener() { // from class: io.didomi.sdk.jc
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                Q.g(this.a, view);
            }
        });
        setupManageSpiChoicesButton$lambda$23.setText(this.c.p());
        setupManageSpiChoicesButton$lambda$23.setVisibility(0);
    }

    private final void p() {
        String strT = this.c.t();
        TextView setupTitleText$lambda$6 = this.b.j;
        if (StringsKt__StringsJVMKt.isBlank(strT)) {
            Intrinsics.checkNotNullExpressionValue(setupTitleText$lambda$6, "setupTitleText$lambda$6");
            setupTitleText$lambda$6.setVisibility(8);
        } else {
            Intrinsics.checkNotNullExpressionValue(setupTitleText$lambda$6, "setupTitleText$lambda$6");
            C1955y8.a(setupTitleText$lambda$6, L0.NOTICE_TITLE, this.f8335d);
            setupTitleText$lambda$6.setText(strT);
        }
    }

    public final void a(C1879r2 c1879r2) {
        Intrinsics.checkNotNullParameter(c1879r2, "<set-?>");
        this.h = c1879r2;
    }

    public final void a(C1889s2 c1889s2) {
        Intrinsics.checkNotNullParameter(c1889s2, "<set-?>");
        this.f8338g = c1889s2;
    }

    public final C1879r2 d() {
        C1879r2 c1879r2 = this.h;
        if (c1879r2 != null) {
            return c1879r2;
        }
        Intrinsics.throwUninitializedPropertyAccessException("footerBinding");
        return null;
    }

    public final C1889s2 e() {
        C1889s2 c1889s2 = this.f8338g;
        if (c1889s2 != null) {
            return c1889s2;
        }
        Intrinsics.throwUninitializedPropertyAccessException("headerBinding");
        return null;
    }

    public final void j() {
        this.b.i.getViewTreeObserver().removeOnScrollChangedListener(this.f8337f);
    }
}
