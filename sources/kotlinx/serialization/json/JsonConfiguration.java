package kotlinx.serialization.json;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: JsonConfiguration.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0018\u0018\u00002\u00020\u0001B\u007f\b\u0000\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0003\u0012\b\b\u0002\u0010\b\u001a\u00020\u0003\u0012\b\b\u0002\u0010\t\u001a\u00020\n\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0003\u0012\b\b\u0002\u0010\f\u001a\u00020\u0003\u0012\b\b\u0002\u0010\r\u001a\u00020\n\u0012\b\b\u0002\u0010\u000e\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0003¢\u0006\u0002\u0010\u0010J\b\u0010!\u001a\u00020\nH\u0016R\u0011\u0010\u000e\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0012R\u0011\u0010\r\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u0011\u0010\u000b\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0012R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0012R\u001c\u0010\b\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u0012R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u0012R\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0012R\u0011\u0010\u0007\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u0012R\u001c\u0010\t\u001a\u00020\n8\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u001d\u0010\u0019\u001a\u0004\b\u001e\u0010\u0015R\u0011\u0010\u000f\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010\u0012R\u0011\u0010\f\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b \u0010\u0012¨\u0006\""}, d2 = {"Lkotlinx/serialization/json/JsonConfiguration;", "", "encodeDefaults", "", "ignoreUnknownKeys", "isLenient", "allowStructuredMapKeys", "prettyPrint", "explicitNulls", "prettyPrintIndent", "", "coerceInputValues", "useArrayPolymorphism", "classDiscriminator", "allowSpecialFloatingPointValues", "useAlternativeNames", "(ZZZZZZLjava/lang/String;ZZLjava/lang/String;ZZ)V", "getAllowSpecialFloatingPointValues", "()Z", "getAllowStructuredMapKeys", "getClassDiscriminator", "()Ljava/lang/String;", "getCoerceInputValues", "getEncodeDefaults", "getExplicitNulls$annotations", "()V", "getExplicitNulls", "getIgnoreUnknownKeys", "getPrettyPrint", "getPrettyPrintIndent$annotations", "getPrettyPrintIndent", "getUseAlternativeNames", "getUseArrayPolymorphism", "toString", "kotlinx-serialization-json"}, mv = {1, 7, 1}, xi = 48)
public final class JsonConfiguration {

    /* JADX INFO: renamed from: a, reason: from toString */
    private final boolean encodeDefaults;

    /* JADX INFO: renamed from: b, reason: from toString */
    private final boolean ignoreUnknownKeys;

    /* JADX INFO: renamed from: c, reason: from toString */
    private final boolean isLenient;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from toString */
    private final boolean allowStructuredMapKeys;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from toString */
    private final boolean prettyPrint;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from toString */
    private final boolean explicitNulls;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from toString */
    private final String prettyPrintIndent;

    /* JADX INFO: renamed from: h, reason: from toString */
    private final boolean coerceInputValues;

    /* JADX INFO: renamed from: i, reason: from toString */
    private final boolean useArrayPolymorphism;

    /* JADX INFO: renamed from: j, reason: from toString */
    private final String classDiscriminator;

    /* JADX INFO: renamed from: k, reason: from toString */
    private final boolean allowSpecialFloatingPointValues;
    private final boolean l;

    public JsonConfiguration() {
        this(false, false, false, false, false, false, null, false, false, null, false, false, 4095, null);
    }

    public JsonConfiguration(boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, String prettyPrintIndent, boolean z7, boolean z8, String classDiscriminator, boolean z9, boolean z10) {
        Intrinsics.checkNotNullParameter(prettyPrintIndent, "prettyPrintIndent");
        Intrinsics.checkNotNullParameter(classDiscriminator, "classDiscriminator");
        this.encodeDefaults = z;
        this.ignoreUnknownKeys = z2;
        this.isLenient = z3;
        this.allowStructuredMapKeys = z4;
        this.prettyPrint = z5;
        this.explicitNulls = z6;
        this.prettyPrintIndent = prettyPrintIndent;
        this.coerceInputValues = z7;
        this.useArrayPolymorphism = z8;
        this.classDiscriminator = classDiscriminator;
        this.allowSpecialFloatingPointValues = z9;
        this.l = z10;
    }

    public /* synthetic */ JsonConfiguration(boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, String str, boolean z7, boolean z8, String str2, boolean z9, boolean z10, int i, kotlin.jvm.internal.n nVar) {
        this((i & 1) != 0 ? false : z, (i & 2) != 0 ? false : z2, (i & 4) != 0 ? false : z3, (i & 8) != 0 ? false : z4, (i & 16) != 0 ? false : z5, (i & 32) != 0 ? true : z6, (i & 64) != 0 ? "    " : str, (i & 128) != 0 ? false : z7, (i & 256) != 0 ? false : z8, (i & 512) != 0 ? "type" : str2, (i & 1024) == 0 ? z9 : false, (i & 2048) == 0 ? z10 : true);
    }

    public static /* synthetic */ void getExplicitNulls$annotations() {
    }

    public static /* synthetic */ void getPrettyPrintIndent$annotations() {
    }

    /* JADX INFO: renamed from: a, reason: from getter */
    public final boolean getAllowSpecialFloatingPointValues() {
        return this.allowSpecialFloatingPointValues;
    }

    /* JADX INFO: renamed from: b, reason: from getter */
    public final boolean getAllowStructuredMapKeys() {
        return this.allowStructuredMapKeys;
    }

    /* JADX INFO: renamed from: c, reason: from getter */
    public final String getClassDiscriminator() {
        return this.classDiscriminator;
    }

    /* JADX INFO: renamed from: d, reason: from getter */
    public final boolean getCoerceInputValues() {
        return this.coerceInputValues;
    }

    /* JADX INFO: renamed from: e, reason: from getter */
    public final boolean getEncodeDefaults() {
        return this.encodeDefaults;
    }

    /* JADX INFO: renamed from: f, reason: from getter */
    public final boolean getExplicitNulls() {
        return this.explicitNulls;
    }

    /* JADX INFO: renamed from: g, reason: from getter */
    public final boolean getIgnoreUnknownKeys() {
        return this.ignoreUnknownKeys;
    }

    /* JADX INFO: renamed from: h, reason: from getter */
    public final boolean getPrettyPrint() {
        return this.prettyPrint;
    }

    /* JADX INFO: renamed from: i, reason: from getter */
    public final String getPrettyPrintIndent() {
        return this.prettyPrintIndent;
    }

    /* JADX INFO: renamed from: j, reason: from getter */
    public final boolean getL() {
        return this.l;
    }

    /* JADX INFO: renamed from: k, reason: from getter */
    public final boolean getUseArrayPolymorphism() {
        return this.useArrayPolymorphism;
    }

    /* JADX INFO: renamed from: l, reason: from getter */
    public final boolean getIsLenient() {
        return this.isLenient;
    }

    public String toString() {
        return "JsonConfiguration(encodeDefaults=" + this.encodeDefaults + ", ignoreUnknownKeys=" + this.ignoreUnknownKeys + ", isLenient=" + this.isLenient + ", allowStructuredMapKeys=" + this.allowStructuredMapKeys + ", prettyPrint=" + this.prettyPrint + ", explicitNulls=" + this.explicitNulls + ", prettyPrintIndent='" + this.prettyPrintIndent + "', coerceInputValues=" + this.coerceInputValues + ", useArrayPolymorphism=" + this.useArrayPolymorphism + ", classDiscriminator='" + this.classDiscriminator + "', allowSpecialFloatingPointValues=" + this.allowSpecialFloatingPointValues + ')';
    }
}
