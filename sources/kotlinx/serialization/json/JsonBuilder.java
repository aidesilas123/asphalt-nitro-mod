package kotlinx.serialization.json;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.modules.SerializersModule;

/* JADX INFO: compiled from: Json.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\u001c\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u000f\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\r\u00107\u001a\u000208H\u0000¢\u0006\u0002\b9R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001a\u0010\u000b\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\b\"\u0004\b\r\u0010\nR\u001a\u0010\u000e\u001a\u00020\u000fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u001a\u0010\u0014\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\b\"\u0004\b\u0016\u0010\nR\u001a\u0010\u0017\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\b\"\u0004\b\u0019\u0010\nR$\u0010\u001a\u001a\u00020\u00068\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\b\"\u0004\b\u001e\u0010\nR\u001a\u0010\u001f\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010\b\"\u0004\b!\u0010\nR\u001a\u0010\"\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010\b\"\u0004\b#\u0010\nR\u001a\u0010$\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b%\u0010\b\"\u0004\b&\u0010\nR$\u0010'\u001a\u00020\u000f8\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b(\u0010\u001c\u001a\u0004\b)\u0010\u0011\"\u0004\b*\u0010\u0013R\u001a\u0010+\u001a\u00020,X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b-\u0010.\"\u0004\b/\u00100R\u001a\u00101\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b2\u0010\b\"\u0004\b3\u0010\nR\u001a\u00104\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b5\u0010\b\"\u0004\b6\u0010\n¨\u0006:"}, d2 = {"Lkotlinx/serialization/json/JsonBuilder;", "", "json", "Lkotlinx/serialization/json/Json;", "(Lkotlinx/serialization/json/Json;)V", "allowSpecialFloatingPointValues", "", "getAllowSpecialFloatingPointValues", "()Z", "setAllowSpecialFloatingPointValues", "(Z)V", "allowStructuredMapKeys", "getAllowStructuredMapKeys", "setAllowStructuredMapKeys", "classDiscriminator", "", "getClassDiscriminator", "()Ljava/lang/String;", "setClassDiscriminator", "(Ljava/lang/String;)V", "coerceInputValues", "getCoerceInputValues", "setCoerceInputValues", "encodeDefaults", "getEncodeDefaults", "setEncodeDefaults", "explicitNulls", "getExplicitNulls$annotations", "()V", "getExplicitNulls", "setExplicitNulls", "ignoreUnknownKeys", "getIgnoreUnknownKeys", "setIgnoreUnknownKeys", "isLenient", "setLenient", "prettyPrint", "getPrettyPrint", "setPrettyPrint", "prettyPrintIndent", "getPrettyPrintIndent$annotations", "getPrettyPrintIndent", "setPrettyPrintIndent", "serializersModule", "Lkotlinx/serialization/modules/SerializersModule;", "getSerializersModule", "()Lkotlinx/serialization/modules/SerializersModule;", "setSerializersModule", "(Lkotlinx/serialization/modules/SerializersModule;)V", "useAlternativeNames", "getUseAlternativeNames", "setUseAlternativeNames", "useArrayPolymorphism", "getUseArrayPolymorphism", "setUseArrayPolymorphism", "build", "Lkotlinx/serialization/json/JsonConfiguration;", "build$kotlinx_serialization_json", "kotlinx-serialization-json"}, mv = {1, 7, 1}, xi = 48)
public final class JsonBuilder {
    private boolean a;
    private boolean b;
    private boolean c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f10471d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f10472e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f10473f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f10474g;
    private boolean h;
    private boolean i;
    private String j;
    private boolean k;
    private boolean l;
    private SerializersModule m;

    public JsonBuilder(Json json) {
        Intrinsics.checkNotNullParameter(json, "json");
        this.a = json.getB().getEncodeDefaults();
        this.b = json.getB().getExplicitNulls();
        this.c = json.getB().getIgnoreUnknownKeys();
        this.f10471d = json.getB().getIsLenient();
        this.f10472e = json.getB().getAllowStructuredMapKeys();
        this.f10473f = json.getB().getPrettyPrint();
        this.f10474g = json.getB().getPrettyPrintIndent();
        this.h = json.getB().getCoerceInputValues();
        this.i = json.getB().getUseArrayPolymorphism();
        this.j = json.getB().getClassDiscriminator();
        this.k = json.getB().getAllowSpecialFloatingPointValues();
        this.l = json.getB().getL();
        this.m = json.getC();
    }

    public static /* synthetic */ void getExplicitNulls$annotations() {
    }

    public static /* synthetic */ void getPrettyPrintIndent$annotations() {
    }

    public final JsonConfiguration a() {
        if (this.i && !Intrinsics.areEqual(this.j, "type")) {
            throw new IllegalArgumentException("Class discriminator should not be specified when array polymorphism is specified".toString());
        }
        if (this.f10473f) {
            if (!Intrinsics.areEqual(this.f10474g, "    ")) {
                String str = this.f10474g;
                boolean z = false;
                int i = 0;
                while (true) {
                    boolean z2 = true;
                    if (i >= str.length()) {
                        z = true;
                        break;
                    }
                    char cCharAt = str.charAt(i);
                    if (cCharAt != ' ' && cCharAt != '\t' && cCharAt != '\r' && cCharAt != '\n') {
                        z2 = false;
                    }
                    if (!z2) {
                        break;
                    }
                    i++;
                }
                if (!z) {
                    throw new IllegalArgumentException(("Only whitespace, tab, newline and carriage return are allowed as pretty print symbols. Had " + this.f10474g).toString());
                }
            }
        } else if (!Intrinsics.areEqual(this.f10474g, "    ")) {
            throw new IllegalArgumentException("Indent should not be specified when default printing mode is used".toString());
        }
        return new JsonConfiguration(this.a, this.c, this.f10471d, this.f10472e, this.f10473f, this.b, this.f10474g, this.h, this.i, this.j, this.k, this.l);
    }

    /* JADX INFO: renamed from: b, reason: from getter */
    public final SerializersModule getM() {
        return this.m;
    }

    public final void c(boolean z) {
        this.f10472e = z;
    }

    public final void d(boolean z) {
        this.a = z;
    }

    public final void e(boolean z) {
        this.b = z;
    }

    public final void f(boolean z) {
        this.c = z;
    }
}
