package io.didomi.drawable;

import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.widget.TextView;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import io.didomi.drawable.C1806k;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: io.didomi.sdk.y8, reason: case insensitive filesystem */
/*  JADX ERROR: Error in decompile pass: KotlinMetadataDecompile
    kotlin.metadata.InconsistentKotlinMetadataException: Metadata is missing: kotlin.Metadata.data1 must not be an empty array
    	at kotlin.metadata.jvm.internal.JvmExceptionUtilsKt.requireNotEmpty(JvmExceptionUtils.kt:12)
    	at kotlin.metadata.jvm.internal.JvmReadUtils.readKmClass$kotlin_metadata_jvm(JvmReadUtils.kt:27)
    	at kotlin.metadata.jvm.KotlinClassMetadata$Class.<init>(KotlinClassMetadata.kt:95)
    	at kotlin.metadata.jvm.internal.JvmReadUtils.readMetadataImpl$kotlin_metadata_jvm(JvmReadUtils.kt:50)
    	at kotlin.metadata.jvm.KotlinClassMetadata$Companion.readLenient(KotlinClassMetadata.kt:418)
    	at jadx.plugins.kotlin.metadata.utils.KotlinMetadataExtKt.getKotlinClassMetadata(KotlinMetadataExt.kt:71)
    	at jadx.plugins.kotlin.metadata.utils.KmClassWrapper$Companion.getWrapper(KmClassWrapper.kt:37)
    	at jadx.plugins.kotlin.metadata.pass.KotlinMetadataDecompilePass.visit(KotlinMetadataDecompilePass.kt:35)
    	at jadx.plugins.kotlin.metadata.pass.KotlinMetadataDecompilePass.visit(KotlinMetadataDecompilePass.kt:33)
    */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a!\u0010\u0006\u001a\u00020\u0005*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0006\u0010\u0007\u001a\u0019\u0010\u0006\u001a\u00020\u0005*\u00020\u00002\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\u0006\u0010\n\u001a%\u0010\u0006\u001a\u00020\u0005*\u00020\u00002\u0006\u0010\f\u001a\u00020\u000b2\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0002¢\u0006\u0004\b\u0006\u0010\u000f¨\u0006\u0010"}, d2 = {"Landroid/widget/TextView;", "Lio/didomi/sdk/L0;", "type", "Lio/didomi/sdk/z8;", "themeProvider", "", "a", "(Landroid/widget/TextView;Lio/didomi/sdk/L0;Lio/didomi/sdk/z8;)V", "Lio/didomi/sdk/w8;", "theme", "(Landroid/widget/TextView;Lio/didomi/sdk/w8;)V", "Lio/didomi/sdk/k$i$c$a;", "alignment", "Landroid/graphics/Typeface;", TtmlNode.ATTR_TTS_FONT_FAMILY, "(Landroid/widget/TextView;Lio/didomi/sdk/k$i$c$a;Landroid/graphics/Typeface;)V", "android_release"}, mv = {1, 8, 0})
public final class C1955y8 {

    /* JADX INFO: renamed from: io.didomi.sdk.y8$a */
    @Metadata(mv = {1, 8, 0}, xi = 48)
    public /* synthetic */ class a {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[L0.values().length];
            try {
                iArr[L0.NOTICE_DESCRIPTION.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[L0.NOTICE_TITLE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[L0.PREFERENCES_DESCRIPTION.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[L0.PREFERENCES_TITLE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[L0.PRIMARY.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[L0.SECONDARY.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            a = iArr;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(TextView this_applyTheme, GradientDrawable it) {
        Intrinsics.checkNotNullParameter(this_applyTheme, "$this_applyTheme");
        Intrinsics.checkNotNullParameter(it, "$it");
        this_applyTheme.setBackground(it);
    }

    public static final void a(TextView textView, L0 type, C1965z8 themeProvider) {
        Intrinsics.checkNotNullParameter(textView, "<this>");
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(themeProvider, "themeProvider");
        switch (a.a[type.ordinal()]) {
            case 1:
                a(textView, themeProvider.h().b(), themeProvider.h().c());
                textView.setTextColor(themeProvider.h().d());
                textView.setTextSize(themeProvider.h().e());
                textView.setTypeface(themeProvider.h().c());
                if (themeProvider.v()) {
                    textView.setLinkTextColor(themeProvider.f());
                }
                break;
            case 2:
                a(textView, themeProvider.h().j(), themeProvider.h().k());
                textView.setTextColor(themeProvider.h().l());
                textView.setTextSize(themeProvider.h().m());
                textView.setTypeface(themeProvider.h().k());
                break;
            case 3:
                a(textView, themeProvider.i().b(), themeProvider.i().g());
                textView.setTextColor(themeProvider.i().e());
                textView.setTextSize(themeProvider.i().f());
                textView.setTypeface(themeProvider.i().g());
                if (themeProvider.v()) {
                    textView.setLinkTextColor(themeProvider.f());
                }
                break;
            case 4:
                a(textView, themeProvider.i().l(), themeProvider.i().m());
                textView.setTextColor(themeProvider.i().p());
                textView.setTextSize(themeProvider.i().q());
                textView.setTypeface(themeProvider.i().m());
                break;
            case 5:
                textView.setTextColor(themeProvider.j());
                break;
            case 6:
                textView.setTextColor(themeProvider.r());
                break;
        }
    }

    private static final void a(TextView textView, C1806k.i.c.a aVar, Typeface typeface) {
        textView.setGravity(aVar.b());
        if (aVar == C1806k.i.c.a.JUSTIFY) {
            C1945x8.b(textView, typeface != null);
        }
    }

    public static final void a(final TextView textView, TextTheme theme) {
        Intrinsics.checkNotNullParameter(textView, "<this>");
        Intrinsics.checkNotNullParameter(theme, "theme");
        final GradientDrawable background = theme.getBackground();
        if (background != null) {
            textView.post(new Runnable() { // from class: io.didomi.sdk.ag
                @Override // java.lang.Runnable
                public final void run() {
                    C1955y8.a(textView, background);
                }
            });
        }
        textView.setTextColor(theme.getTextColor());
        Typeface typeface = theme.getTypeface();
        if (typeface != null) {
            textView.setTypeface(typeface);
        }
    }
}
