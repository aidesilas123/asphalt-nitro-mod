package io.didomi.drawable.view.mobile;

import android.animation.LayoutTransition;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.GradientDrawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.Switch;
import androidx.annotation.ColorRes;
import androidx.annotation.DrawableRes;
import androidx.core.content.ContextCompat;
import androidx.core.view.ViewCompat;
import androidx.interpolator.view.animation.FastOutLinearInInterpolator;
import com.fyber.inneractive.sdk.external.InneractiveMediationDefs;
import com.json.b4;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import io.didomi.drawable.C1856p;
import io.didomi.drawable.C1965z8;
import io.didomi.drawable.C2;
import io.didomi.drawable.Didomi;
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
@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\r\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001:\u0002\u0019\u000bB'\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\u000e\u001a\u00020\rH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\nH\u0014¢\u0006\u0004\b\u0010\u0010\fJ\u0017\u0010\u0013\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u0017\u0010\u0017\u001a\u00020\n2\b\u0010\u0016\u001a\u0004\u0018\u00010\u0015¢\u0006\u0004\b\u0017\u0010\u0018J\r\u0010\u0019\u001a\u00020\n¢\u0006\u0004\b\u0019\u0010\fR\u0014\u0010\u001c\u001a\u00020\u001a8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u001bR*\u0010$\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001d8\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\u001f\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R*\u0010*\u001a\u00020\u00112\u0006\u0010\u001e\u001a\u00020\u00118\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b%\u0010&\u001a\u0004\b'\u0010(\"\u0004\b)\u0010\u0014R\"\u0010.\u001a\u00020\u00118\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b+\u0010&\u001a\u0004\b,\u0010(\"\u0004\b-\u0010\u0014R\u0018\u0010\u0016\u001a\u0004\u0018\u00010\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b/\u00100R\"\u00108\u001a\u0002018\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b2\u00103\u001a\u0004\b4\u00105\"\u0004\b6\u00107¨\u00069"}, d2 = {"Lio/didomi/sdk/view/mobile/DidomiToggle;", "Landroid/widget/FrameLayout;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyle", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "()V", "", "getAccessibilityClassName", "()Ljava/lang/CharSequence;", "onFinishInflate", "", b4.r, "setEnabled", "(Z)V", "Lio/didomi/sdk/view/mobile/DidomiToggle$a;", "callback", "setCallback", "(Lio/didomi/sdk/view/mobile/DidomiToggle$a;)V", "a", "Lio/didomi/sdk/C2;", "Lio/didomi/sdk/C2;", "binding", "Lio/didomi/sdk/view/mobile/DidomiToggle$b;", "value", "Lio/didomi/sdk/view/mobile/DidomiToggle$b;", "getState", "()Lio/didomi/sdk/view/mobile/DidomiToggle$b;", "setState", "(Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V", "state", "c", "Z", "getAnimate", "()Z", "setAnimate", "animate", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "getHasMiddleState", "setHasMiddleState", "hasMiddleState", "e", "Lio/didomi/sdk/view/mobile/DidomiToggle$a;", "Lio/didomi/sdk/z8;", InneractiveMediationDefs.GENDER_FEMALE, "Lio/didomi/sdk/z8;", "getThemeProvider", "()Lio/didomi/sdk/z8;", "setThemeProvider", "(Lio/didomi/sdk/z8;)V", "themeProvider", "android_release"}, mv = {1, 8, 0})
public final class DidomiToggle extends FrameLayout {
    private final C2 a;
    private b b;
    private boolean c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f8783d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private a f8784e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public C1965z8 f8785f;

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H&¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lio/didomi/sdk/view/mobile/DidomiToggle$a;", "", "Lio/didomi/sdk/view/mobile/DidomiToggle;", "toggle", "Lio/didomi/sdk/view/mobile/DidomiToggle$b;", "state", "", "a", "(Lio/didomi/sdk/view/mobile/DidomiToggle;Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V", "android_release"}, mv = {1, 8, 0})
    public interface a {
        void a(DidomiToggle toggle, b state);
    }

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\n\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u001d\b\u0002\u0012\b\b\u0001\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0003\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u0015\u0010\t\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\nR\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\t\u0010\u000b\u001a\u0004\b\f\u0010\rR\u0017\u0010\u0004\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\f\u0010\u000b\u001a\u0004\b\u000e\u0010\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010¨\u0006\u0011"}, d2 = {"Lio/didomi/sdk/view/mobile/DidomiToggle$b;", "", "", "colorRes", "iconRes", "<init>", "(Ljava/lang/String;III)V", "", "hasMiddleState", "a", "(Z)Lio/didomi/sdk/view/mobile/DidomiToggle$b;", "I", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "()I", "c", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "e", "android_release"}, mv = {1, 8, 0})
    public enum b {
        DISABLED(R.color.didomi_toggle_disabled, R.drawable.didomi_ic_toggle_cross),
        ENABLED(R.color.didomi_toggle_enabled, R.drawable.didomi_ic_toggle_check),
        UNKNOWN(R.color.didomi_toggle_unknown, 0, 2, null);

        private final int a;
        private final int b;

        @Metadata(mv = {1, 8, 0}, xi = 48)
        public /* synthetic */ class a {
            public static final /* synthetic */ int[] a;

            static {
                int[] iArr = new int[b.values().length];
                try {
                    iArr[b.ENABLED.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[b.DISABLED.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[b.UNKNOWN.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                a = iArr;
            }
        }

        b(@ColorRes int i, @DrawableRes int i2) {
            this.a = i;
            this.b = i2;
        }

        /* synthetic */ b(int i, int i2, int i3, n nVar) {
            this(i, (i3 & 2) != 0 ? 0 : i2);
        }

        public final b a(boolean z) {
            int i = a.a[ordinal()];
            if (i == 1) {
                return DISABLED;
            }
            if (i == 2) {
                return z ? UNKNOWN : ENABLED;
            }
            if (i == 3) {
                return ENABLED;
            }
            throw new NoWhenBranchMatchedException();
        }

        public final int b() {
            return this.a;
        }

        public final int c() {
            return this.b;
        }
    }

    @Metadata(mv = {1, 8, 0}, xi = 48)
    public /* synthetic */ class c {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[b.values().length];
            try {
                iArr[b.ENABLED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[b.DISABLED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[b.UNKNOWN.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            a = iArr;
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public DidomiToggle(Context context) {
        this(context, null, 0, 6, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public DidomiToggle(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DidomiToggle(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkNotNullParameter(context, "context");
        C2 c2A = C2.a(LayoutInflater.from(context), this, true);
        Intrinsics.checkNotNullExpressionValue(c2A, "inflate(LayoutInflater.from(context), this, true)");
        this.a = c2A;
        this.b = b.UNKNOWN;
        this.c = !C1856p.a.get();
        this.f8783d = true;
        if (!isInEditMode()) {
            Didomi.Companion.getInstance().getComponent$android_release().a(this);
        }
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.DidomiToggle);
            Intrinsics.checkNotNullExpressionValue(typedArrayObtainStyledAttributes, "context.obtainStyledAttr…R.styleable.DidomiToggle)");
            int i2 = R.styleable.DidomiToggle_didomi_enabled;
            if (typedArrayObtainStyledAttributes.hasValue(i2)) {
                setEnabled(typedArrayObtainStyledAttributes.getBoolean(i2, true));
            }
            int i3 = R.styleable.DidomiToggle_didomi_has_middle_state;
            if (typedArrayObtainStyledAttributes.hasValue(i3)) {
                this.f8783d = typedArrayObtainStyledAttributes.getBoolean(i3, true);
            }
            int i4 = R.styleable.DidomiToggle_didomi_state;
            if (typedArrayObtainStyledAttributes.hasValue(i4)) {
                setState(b.values()[typedArrayObtainStyledAttributes.getInt(i4, 0)]);
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public /* synthetic */ DidomiToggle(Context context, AttributeSet attributeSet, int i, int i2, n nVar) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(DidomiToggle this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.a();
    }

    private final void b() {
        int i;
        ImageView imageView = this.a.f8193d;
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(imageView.getLayoutParams());
        int i2 = c.a[this.b.ordinal()];
        if (i2 == 1) {
            i = 8388629;
        } else if (i2 == 2) {
            i = 8388627;
        } else {
            if (i2 != 3) {
                throw new NoWhenBranchMatchedException();
            }
            i = 17;
        }
        layoutParams.gravity = i;
        imageView.setLayoutParams(layoutParams);
        ViewCompat.setBackgroundTintList(imageView, ColorStateList.valueOf(ContextCompat.getColor(imageView.getContext(), this.b.b())));
        imageView.setImageResource(this.b.c());
    }

    public final void a() {
        setState(this.b.a(this.f8783d));
        b();
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public CharSequence getAccessibilityClassName() {
        String name = Switch.class.getName();
        Intrinsics.checkNotNullExpressionValue(name, "Switch::class.java.name");
        return name;
    }

    public final boolean getAnimate() {
        return this.c;
    }

    public final boolean getHasMiddleState() {
        return this.f8783d;
    }

    public final b getState() {
        return this.b;
    }

    public final C1965z8 getThemeProvider() {
        C1965z8 c1965z8 = this.f8785f;
        if (c1965z8 != null) {
            return c1965z8;
        }
        Intrinsics.throwUninitializedPropertyAccessException("themeProvider");
        return null;
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        View view = this.a.c;
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setCornerRadius(getResources().getDisplayMetrics().density * 180.0f);
        gradientDrawable.setColor(ContextCompat.getColor(getContext(), isInEditMode() ? android.R.color.darker_gray : getThemeProvider().t() ? R.color.didomi_dark_divider : R.color.didomi_light_divider));
        view.setBackground(gradientDrawable);
        if (this.f8783d || this.b != b.UNKNOWN) {
            b();
        } else {
            setState(b.DISABLED);
        }
        setAnimate(true);
        setOnClickListener(new View.OnClickListener() { // from class: io.didomi.sdk.view.mobile.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                DidomiToggle.a(this.a, view2);
            }
        });
    }

    public final void setAnimate(boolean z) {
        LayoutTransition layoutTransition;
        this.c = z;
        FrameLayout frameLayout = this.a.b;
        if (!z || C1856p.a.get()) {
            layoutTransition = null;
        } else {
            layoutTransition = new LayoutTransition();
            layoutTransition.setDuration(150L);
            layoutTransition.enableTransitionType(4);
            layoutTransition.setInterpolator(4, new FastOutLinearInInterpolator());
        }
        frameLayout.setLayoutTransition(layoutTransition);
    }

    public final void setCallback(a aVar) {
        this.f8784e = aVar;
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        setAlpha(z ? 1.0f : 0.6f);
    }

    public final void setHasMiddleState(boolean z) {
        this.f8783d = z;
    }

    public final void setState(b value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.b = value;
        b();
        a aVar = this.f8784e;
        if (aVar != null) {
            aVar.a(this, this.b);
        }
    }

    public final void setThemeProvider(C1965z8 c1965z8) {
        Intrinsics.checkNotNullParameter(c1965z8, "<set-?>");
        this.f8785f = c1965z8;
    }
}
