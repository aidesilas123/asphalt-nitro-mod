package io.didomi.drawable;

import android.graphics.drawable.ColorDrawable;
import android.os.Build;
import android.text.Spannable;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.style.ImageSpan;
import android.text.style.StyleSpan;
import android.view.View;
import android.widget.TextView;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import io.didomi.drawable.JustificationParameters;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: renamed from: io.didomi.sdk.x8, reason: case insensitive filesystem */
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
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\r\n\u0002\b\u0004\u001a\u001b\u0010\u0004\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\u0000¢\u0006\u0004\b\u0004\u0010\u0005\u001a\u001d\u0010\u0004\u001a\u0004\u0018\u00010\u0001*\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0006H\u0000¢\u0006\u0004\b\u0004\u0010\b\u001a\u0013\u0010\u0004\u001a\u00020\t*\u00020\u0000H\u0000¢\u0006\u0004\b\u0004\u0010\n\u001a\u0013\u0010\u0004\u001a\u00020\u0006*\u00020\u000bH\u0000¢\u0006\u0004\b\u0004\u0010\f\u001a\u001b\u0010\r\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0006H\u0000¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Landroid/widget/TextView;", "Lio/didomi/sdk/t3;", "parameters", "", "a", "(Landroid/widget/TextView;Lio/didomi/sdk/t3;)V", "", "isFontFamilyCustomized", "(Landroid/widget/TextView;Z)Lio/didomi/sdk/t3;", "", "(Landroid/widget/TextView;)I", "", "(Ljava/lang/CharSequence;)Z", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "(Landroid/widget/TextView;Z)V", "android_release"}, mv = {1, 8, 0})
public final class C1945x8 {

    /* JADX INFO: renamed from: io.didomi.sdk.x8$a */
    @Metadata(d1 = {"\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u00020\u0001JW\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u000e\u0010\u000f¨\u0006\u0010¸\u0006\u0000"}, d2 = {"androidx/core/view/ViewKt$doOnNextLayout$1", "Landroid/view/View$OnLayoutChangeListener;", "Landroid/view/View;", "view", "", "left", ViewHierarchyConstants.DIMENSION_TOP_KEY, TtmlNode.RIGHT, "bottom", "oldLeft", "oldTop", "oldRight", "oldBottom", "", "onLayoutChange", "(Landroid/view/View;IIIIIIII)V", "core-ktx_release"}, mv = {1, 8, 0})
    public static final class a implements View.OnLayoutChangeListener {
        final /* synthetic */ TextView a;
        final /* synthetic */ boolean b;

        public a(TextView textView, boolean z) {
            this.a = textView;
            this.b = z;
        }

        @Override // android.view.View.OnLayoutChangeListener
        public void onLayoutChange(View view, int left, int top, int right, int bottom, int oldLeft, int oldTop, int oldRight, int oldBottom) {
            Intrinsics.checkNotNullParameter(view, "view");
            view.removeOnLayoutChangeListener(this);
            JustificationParameters justificationParametersA = C1945x8.a(this.a, this.b);
            if (justificationParametersA == null) {
                return;
            }
            Log.d$default("shrunkContent:\n" + justificationParametersA.getShrunkContent(), null, 2, null);
            this.a.setText(justificationParametersA.getShrunkContent());
            TextView textView = this.a;
            textView.post(new b(textView, justificationParametersA));
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.x8$b */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "run"}, mv = {1, 8, 0}, xi = 48)
    static final class b implements Runnable {
        final /* synthetic */ TextView a;
        final /* synthetic */ JustificationParameters b;

        b(TextView textView, JustificationParameters justificationParameters) {
            this.a = textView;
            this.b = justificationParameters;
        }

        @Override // java.lang.Runnable
        public final void run() {
            C1945x8.a(this.a, this.b);
            TextView textView = this.a;
            textView.setLineSpacing(textView.getLineSpacingExtra(), this.a.getLineSpacingMultiplier() - 0.06f);
        }
    }

    public static final int a(TextView textView) {
        Intrinsics.checkNotNullParameter(textView, "<this>");
        return (textView.getMeasuredWidth() - textView.getPaddingEnd()) - textView.getPaddingStart();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v5, types: [android.text.Spannable, android.text.Spanned] */
    /* JADX WARN: Type inference failed for: r7v0 */
    /* JADX WARN: Type inference failed for: r7v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r7v13 */
    /* JADX WARN: Type inference failed for: r7v14 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v7, types: [int] */
    public static final JustificationParameters a(TextView textView, boolean z) {
        String str;
        int spanEnd;
        Intrinsics.checkNotNullParameter(textView, "<this>");
        CharSequence text = textView.getText();
        Throwable th = null;
        if (text == null || StringsKt__StringsJVMKt.isBlank(text) || textView.getLineCount() == 1) {
            return null;
        }
        CharSequence text2 = textView.getText();
        Spanned spanned = text2 instanceof Spanned ? (Spanned) text2 : null;
        if (spanned == null) {
            return null;
        }
        int iA = a(textView);
        ArrayList arrayList = new ArrayList();
        int lineCount = textView.getLineCount();
        ?? r7 = 0;
        String str2 = "";
        int i = 0;
        while (i < lineCount) {
            float lineWidth = textView.getLayout().getLineWidth(i);
            int lineStart = textView.getLayout().getLineStart(i);
            CharSequence charSequenceSubSequence = spanned.subSequence(lineStart, textView.getLayout().getLineEnd(i));
            if (i >= textView.getLineCount() - 1 || StringsKt__StringsKt.endsWith$default(charSequenceSubSequence, "\n", (boolean) r7, 2, th) || a(charSequenceSubSequence) || lineWidth >= iA) {
                Log.d$default("line #" + i + " is not large enough or the last one", null, 2, null);
                str = str2 + ((Object) StringsKt__StringsKt.trim(charSequenceSubSequence)) + '\n';
            } else {
                Log.d$default("line #" + i + " is large enough", th, 2, th);
                ArrayList arrayList2 = new ArrayList();
                for (int iIndexOf$default = StringsKt__StringsKt.indexOf$default(charSequenceSubSequence, " ", 0, false, 6, (Object) null); iIndexOf$default >= 0; iIndexOf$default = StringsKt__StringsKt.indexOf$default(charSequenceSubSequence, " ", iIndexOf$default + 1, false, 4, (Object) null)) {
                    arrayList2.add(Integer.valueOf(lineStart + iIndexOf$default));
                }
                if (charSequenceSubSequence instanceof Spannable) {
                    ?? r11 = (Spannable) charSequenceSubSequence;
                    Object[] spans = r11.getSpans(r7, charSequenceSubSequence.length(), StyleSpan.class);
                    Intrinsics.checkNotNullExpressionValue(spans, "lineText.getSpans(0, lin…h, StyleSpan::class.java)");
                    ArrayList<StyleSpan> arrayList3 = new ArrayList();
                    int length = spans.length;
                    for (?? r72 = r7; r72 < length; r72++) {
                        Object obj = spans[r72];
                        if (((StyleSpan) obj).getStyle() == 1) {
                            arrayList3.add(obj);
                        }
                    }
                    spanEnd = 0;
                    for (StyleSpan styleSpan : arrayList3) {
                        spanEnd += r11.getSpanEnd(styleSpan) - r11.getSpanStart(styleSpan);
                    }
                } else {
                    spanEnd = 0;
                }
                JustificationParameters.LineInfo lineInfo = new JustificationParameters.LineInfo(i, arrayList2, spanEnd);
                arrayList.add(lineInfo);
                Log.d$default("lineInfo: " + lineInfo, null, 2, null);
                str = str2 + CollectionsKt___CollectionsKt.joinToString$default(new Regex("\\s+").g(StringsKt__StringsKt.trim(charSequenceSubSequence), 0), "", null, "\n", 0, null, null, 58, null);
            }
            str2 = str;
            i++;
            th = null;
            r7 = 0;
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new JustificationParameters(arrayList, spanned, str2, z);
    }

    public static final void a(TextView textView, JustificationParameters parameters) {
        Intrinsics.checkNotNullParameter(textView, "<this>");
        Intrinsics.checkNotNullParameter(parameters, "parameters");
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(parameters.getOriginalContent());
        int iA = parameters.getIsFontFamilyCustomized() ? a(textView) - 3 : a(textView);
        for (JustificationParameters.LineInfo lineInfo : parameters.a()) {
            int iMax = Math.max(1, (int) Math.floor((iA - (textView.getLayout().getLineWidth(lineInfo.getLineIndex()) + lineInfo.getBoldCharactersCount())) / (lineInfo.c().size() - 1)));
            Log.d$default("Space for line #" + lineInfo.getLineIndex() + ": " + iMax, null, 2, null);
            int i = 0;
            ColorDrawable colorDrawable = new ColorDrawable(0);
            colorDrawable.setBounds(0, 0, iMax, 1);
            for (Object obj : lineInfo.c()) {
                int i2 = i + 1;
                if (i < 0) {
                    CollectionsKt__CollectionsKt.throwIndexOverflow();
                }
                int iIntValue = ((Number) obj).intValue();
                if (i == CollectionsKt__CollectionsKt.getLastIndex(lineInfo.c())) {
                    spannableStringBuilder = spannableStringBuilder.replace(iIntValue, iIntValue + 1, (CharSequence) "\n");
                    Intrinsics.checkNotNullExpressionValue(spannableStringBuilder, "finalContent.replace(spa…ex, spaceIndex + 1, \"\\n\")");
                } else {
                    spannableStringBuilder.setSpan(Build.VERSION.SDK_INT >= 29 ? new ImageSpan(colorDrawable, 2) : new ImageSpan(colorDrawable), iIntValue, iIntValue + 1, 18);
                }
                i = i2;
            }
        }
        textView.setText(spannableStringBuilder);
    }

    public static final boolean a(CharSequence charSequence) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        return new Regex("^(•|\\d+\\.)\\s.+").e(charSequence);
    }

    public static final void b(TextView textView, boolean z) {
        Intrinsics.checkNotNullParameter(textView, "<this>");
        textView.addOnLayoutChangeListener(new a(textView, z));
    }
}
