package io.didomi.drawable.view.ctv;

import android.animation.LayoutTransition;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.Checkable;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.ColorRes;
import androidx.core.content.ContextCompat;
import androidx.interpolator.view.animation.FastOutLinearInInterpolator;
import com.json.b4;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import io.didomi.drawable.B2;
import io.didomi.drawable.C1856p;
import io.didomi.drawable.R;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.n;

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
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000f\u0018\u0000 ,2\u00020\u00012\u00020\u0002:\u0003\f %B'\b\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\f\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\f\u0010\rJ\u0017\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u0017\u0010\u0013\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u0013\u0010\u0011J\u000f\u0010\u0014\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\u0016\u0010\rJ\u0017\u0010\u0019\u001a\u00020\u000b2\b\u0010\u0018\u001a\u0004\u0018\u00010\u0017¢\u0006\u0004\b\u0019\u0010\u001aR\u0014\u0010\u001d\u001a\u00020\u001b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\u001cR$\u0010$\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u001e8\u0002@BX\u0082\u000e¢\u0006\f\n\u0004\b \u0010!\"\u0004\b\"\u0010#R*\u0010)\u001a\u00020\u000e2\u0006\u0010\u001f\u001a\u00020\u000e8\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b%\u0010&\u001a\u0004\b'\u0010\u0015\"\u0004\b(\u0010\u0011R\u0018\u0010\u0018\u001a\u0004\u0018\u00010\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b*\u0010+¨\u0006-"}, d2 = {"Lio/didomi/sdk/view/ctv/DidomiTVSwitch;", "Landroid/widget/FrameLayout;", "Landroid/widget/Checkable;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyle", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "", "a", "()V", "", b4.r, "setEnabled", "(Z)V", "checked", "setChecked", "isChecked", "()Z", "toggle", "Lio/didomi/sdk/view/ctv/DidomiTVSwitch$a;", "callback", "setCallback", "(Lio/didomi/sdk/view/ctv/DidomiTVSwitch$a;)V", "Lio/didomi/sdk/B2;", "Lio/didomi/sdk/B2;", "binding", "Lio/didomi/sdk/view/ctv/DidomiTVSwitch$c;", "value", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lio/didomi/sdk/view/ctv/DidomiTVSwitch$c;", "setState", "(Lio/didomi/sdk/view/ctv/DidomiTVSwitch$c;)V", "state", "c", "Z", "getAnimate", "setAnimate", "animate", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lio/didomi/sdk/view/ctv/DidomiTVSwitch$a;", "e", "android_release"}, mv = {1, 8, 0})
public final class DidomiTVSwitch extends FrameLayout implements Checkable {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final b f8777e = new b(null);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @ColorRes
    private static final int f8778f = R.color.didomi_tv_neutrals_25;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @ColorRes
    private static final int f8779g = R.color.didomi_tv_neutrals_50;
    private final B2 a;
    private c b;
    private boolean c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private a f8780d;

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H&¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lio/didomi/sdk/view/ctv/DidomiTVSwitch$a;", "", "Lio/didomi/sdk/view/ctv/DidomiTVSwitch;", "switch", "", "isChecked", "", "a", "(Lio/didomi/sdk/view/ctv/DidomiTVSwitch;Z)V", "android_release"}, mv = {1, 8, 0})
    public interface a {
        void a(DidomiTVSwitch didomiTVSwitch, boolean isChecked);
    }

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0083\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\u00048\u0002X\u0083\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\u0006¨\u0006\b"}, d2 = {"Lio/didomi/sdk/view/ctv/DidomiTVSwitch$b;", "", "<init>", "()V", "", "DISABLED_BACKGROUND_COLOR_RES", "I", "DISABLED_COLOR_RES", "android_release"}, mv = {1, 8, 0})
    public static final class b {
        private b() {
        }

        public /* synthetic */ b(n nVar) {
            this();
        }
    }

    /* JADX WARN: Enum visitor error
    jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'c' uses external variables
    	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:451)
    	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByField(EnumVisitor.java:372)
    	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByWrappedInsn(EnumVisitor.java:337)
    	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:322)
    	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
    	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInvoke(EnumVisitor.java:293)
    	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:266)
    	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
    	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
     */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\b\n\u0002\b\u000b\b\u0082\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u001d\b\u0002\u0012\b\b\u0001\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0001\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\nR\u0017\u0010\u0004\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u000b\u0010\b\u001a\u0004\b\u000b\u0010\nj\u0002\b\tj\u0002\b\f¨\u0006\r"}, d2 = {"Lio/didomi/sdk/view/ctv/DidomiTVSwitch$c;", "", "", "colorRes", "backgroundColorRes", "<init>", "(Ljava/lang/String;III)V", "a", "I", "c", "()I", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "android_release"}, mv = {1, 8, 0})
    private static final class c {
        public static final c c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public static final c f8781d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static final /* synthetic */ c[] f8782e;

        /* JADX INFO: renamed from: a, reason: from kotlin metadata */
        private final int colorRes;

        /* JADX INFO: renamed from: b, reason: from kotlin metadata */
        private final int backgroundColorRes;

        static {
            int i = R.color.didomi_tv_neutrals;
            c = new c("DISABLED", 0, i, R.color.didomi_tv_background_c);
            f8781d = new c("ENABLED", 1, i, R.color.didomi_tv_primary_brand);
            f8782e = a();
        }

        private c(@ColorRes String str, @ColorRes int i, int i2, int i3) {
            this.colorRes = i2;
            this.backgroundColorRes = i3;
        }

        private static final /* synthetic */ c[] a() {
            return new c[]{c, f8781d};
        }

        public static c valueOf(String str) {
            return (c) Enum.valueOf(c.class, str);
        }

        public static c[] values() {
            return (c[]) f8782e.clone();
        }

        /* JADX INFO: renamed from: b, reason: from getter */
        public final int getBackgroundColorRes() {
            return this.backgroundColorRes;
        }

        /* JADX INFO: renamed from: c, reason: from getter */
        public final int getColorRes() {
            return this.colorRes;
        }
    }

    @Metadata(mv = {1, 8, 0}, xi = 48)
    public /* synthetic */ class d {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[c.values().length];
            try {
                iArr[c.f8781d.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[c.c.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            a = iArr;
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public DidomiTVSwitch(Context context) {
        this(context, null, 0, 6, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public DidomiTVSwitch(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DidomiTVSwitch(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkNotNullParameter(context, "context");
        B2 b2A = B2.a(LayoutInflater.from(context), this, true);
        Intrinsics.checkNotNullExpressionValue(b2A, "inflate(LayoutInflater.from(context), this, true)");
        this.a = b2A;
        c cVar = c.c;
        this.b = cVar;
        this.c = !C1856p.a.get();
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.DidomiTVSwitch);
            Intrinsics.checkNotNullExpressionValue(typedArrayObtainStyledAttributes, "context.obtainStyledAttr…styleable.DidomiTVSwitch)");
            int i2 = R.styleable.DidomiTVSwitch_didomi_enabled;
            if (typedArrayObtainStyledAttributes.hasValue(i2)) {
                setEnabled(typedArrayObtainStyledAttributes.getBoolean(i2, true));
            }
            int i3 = R.styleable.DidomiTVSwitch_didomi_state;
            if (typedArrayObtainStyledAttributes.hasValue(i3)) {
                int i4 = typedArrayObtainStyledAttributes.getInt(i3, 0);
                setState(i4 < c.values().length ? c.values()[i4] : cVar);
            }
            typedArrayObtainStyledAttributes.recycle();
        }
        a();
        setAnimate(true);
        setOnClickListener(new View.OnClickListener() { // from class: io.didomi.sdk.view.ctv.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DidomiTVSwitch.a(this.a, view);
            }
        });
    }

    public /* synthetic */ DidomiTVSwitch(Context context, AttributeSet attributeSet, int i, int i2, n nVar) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    private final void a() {
        int i;
        ImageView imageView = this.a.c;
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(imageView.getLayoutParams());
        int i2 = d.a[this.b.ordinal()];
        if (i2 == 1) {
            i = 8388629;
        } else {
            if (i2 != 2) {
                throw new NoWhenBranchMatchedException();
            }
            i = 8388627;
        }
        layoutParams.gravity = i;
        imageView.setLayoutParams(layoutParams);
        imageView.setColorFilter(ContextCompat.getColor(imageView.getContext(), imageView.isEnabled() ? this.b.getColorRes() : f8778f));
        this.a.b.setColorFilter(ContextCompat.getColor(getContext(), isEnabled() ? this.b.getBackgroundColorRes() : f8779g), PorterDuff.Mode.SRC);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(DidomiTVSwitch this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.toggle();
    }

    private final void setState(c cVar) {
        this.b = cVar;
        a();
        a aVar = this.f8780d;
        if (aVar != null) {
            aVar.a(this, cVar == c.f8781d);
        }
    }

    public final boolean getAnimate() {
        return this.c;
    }

    @Override // android.widget.Checkable
    public boolean isChecked() {
        return this.b == c.f8781d;
    }

    public final void setAnimate(boolean z) {
        LayoutTransition layoutTransition;
        this.c = z;
        FrameLayout root = this.a.getRoot();
        if (!this.c || C1856p.a.get()) {
            layoutTransition = null;
        } else {
            layoutTransition = new LayoutTransition();
            layoutTransition.setDuration(150L);
            layoutTransition.enableTransitionType(4);
            layoutTransition.setInterpolator(4, new FastOutLinearInInterpolator());
        }
        root.setLayoutTransition(layoutTransition);
    }

    public final void setCallback(a aVar) {
        this.f8780d = aVar;
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z) {
        setState(z ? c.f8781d : c.c);
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        setAlpha(z ? 1.0f : 0.6f);
        a();
    }

    @Override // android.widget.Checkable
    public void toggle() {
        c cVar = this.b;
        c cVar2 = c.f8781d;
        if (cVar == cVar2) {
            cVar2 = c.c;
        }
        setState(cVar2);
    }
}
