package kotlinx.serialization.json;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.google.android.gms.ads.RequestConfiguration;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.DeserializationStrategy;
import kotlinx.serialization.SerializationStrategy;
import kotlinx.serialization.StringFormat;
import kotlinx.serialization.json.internal.DescriptorSchemaCache;
import kotlinx.serialization.json.internal.JsonStreamsKt;
import kotlinx.serialization.json.internal.JsonToStringWriter;
import kotlinx.serialization.json.internal.StreamingJsonDecoder;
import kotlinx.serialization.json.internal.StringJsonLexer;
import kotlinx.serialization.json.internal.TreeJsonDecoderKt;
import kotlinx.serialization.json.internal.TreeJsonEncoderKt;
import kotlinx.serialization.json.internal.WriteMode;
import kotlinx.serialization.modules.SerializersModule;
import kotlinx.serialization.modules.SerializersModuleBuildersKt;

/* JADX INFO: compiled from: Json.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u0000 $2\u00020\u0001:\u0001$B\u0017\b\u0004\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J'\u0010\u0011\u001a\u0002H\u0012\"\u0004\b\u0000\u0010\u00122\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u0002H\u00120\u00142\u0006\u0010\u0015\u001a\u00020\u0016¢\u0006\u0002\u0010\u0017J'\u0010\u0018\u001a\u0002H\u0012\"\u0004\b\u0000\u0010\u00122\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u0002H\u00120\u00142\u0006\u0010\u0019\u001a\u00020\u001a¢\u0006\u0002\u0010\u001bJ'\u0010\u001c\u001a\u00020\u0016\"\u0004\b\u0000\u0010\u00122\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u0002H\u00120\u001e2\u0006\u0010\u001f\u001a\u0002H\u0012¢\u0006\u0002\u0010 J'\u0010!\u001a\u00020\u001a\"\u0004\b\u0000\u0010\u00122\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u0002H\u00120\u001e2\u0006\u0010\u001f\u001a\u0002H\u0012¢\u0006\u0002\u0010\"J\u000e\u0010#\u001a\u00020\u00162\u0006\u0010\u0019\u001a\u00020\u001aR\u001c\u0010\u0007\u001a\u00020\b8\u0000X\u0081\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010\u0082\u0001\u0002%&¨\u0006'"}, d2 = {"Lkotlinx/serialization/json/Json;", "Lkotlinx/serialization/StringFormat;", "configuration", "Lkotlinx/serialization/json/JsonConfiguration;", "serializersModule", "Lkotlinx/serialization/modules/SerializersModule;", "(Lkotlinx/serialization/json/JsonConfiguration;Lkotlinx/serialization/modules/SerializersModule;)V", "_schemaCache", "Lkotlinx/serialization/json/internal/DescriptorSchemaCache;", "get_schemaCache$kotlinx_serialization_json$annotations", "()V", "get_schemaCache$kotlinx_serialization_json", "()Lkotlinx/serialization/json/internal/DescriptorSchemaCache;", "getConfiguration", "()Lkotlinx/serialization/json/JsonConfiguration;", "getSerializersModule", "()Lkotlinx/serialization/modules/SerializersModule;", "decodeFromJsonElement", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "deserializer", "Lkotlinx/serialization/DeserializationStrategy;", "element", "Lkotlinx/serialization/json/JsonElement;", "(Lkotlinx/serialization/DeserializationStrategy;Lkotlinx/serialization/json/JsonElement;)Ljava/lang/Object;", "decodeFromString", TypedValues.Custom.S_STRING, "", "(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;", "encodeToJsonElement", "serializer", "Lkotlinx/serialization/SerializationStrategy;", "value", "(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Lkotlinx/serialization/json/JsonElement;", "encodeToString", "(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Ljava/lang/String;", "parseToJsonElement", "Default", "Lkotlinx/serialization/json/Json$Default;", "Lkotlinx/serialization/json/JsonImpl;", "kotlinx-serialization-json"}, mv = {1, 7, 1}, xi = 48)
public abstract class Json implements StringFormat {
    public static final a a = new a(null);
    private final JsonConfiguration b;
    private final SerializersModule c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final DescriptorSchemaCache f10470d;

    /* JADX INFO: compiled from: Json.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Lkotlinx/serialization/json/Json$Default;", "Lkotlinx/serialization/json/Json;", "()V", "kotlinx-serialization-json"}, mv = {1, 7, 1}, xi = 48)
    public static final class a extends Json {
        private a() {
            super(new JsonConfiguration(false, false, false, false, false, false, null, false, false, null, false, false, 4095, null), SerializersModuleBuildersKt.EmptySerializersModule(), null);
        }

        public /* synthetic */ a(kotlin.jvm.internal.n nVar) {
            this();
        }
    }

    private Json(JsonConfiguration jsonConfiguration, SerializersModule serializersModule) {
        this.b = jsonConfiguration;
        this.c = serializersModule;
        this.f10470d = new DescriptorSchemaCache();
    }

    public /* synthetic */ Json(JsonConfiguration jsonConfiguration, SerializersModule serializersModule, kotlin.jvm.internal.n nVar) {
        this(jsonConfiguration, serializersModule);
    }

    public static /* synthetic */ void get_schemaCache$kotlinx_serialization_json$annotations() {
    }

    @Override // kotlinx.serialization.SerialFormat
    /* JADX INFO: renamed from: a, reason: from getter */
    public SerializersModule getC() {
        return this.c;
    }

    @Override // kotlinx.serialization.StringFormat
    public final <T> T b(DeserializationStrategy<T> deserializer, String string) {
        Intrinsics.checkNotNullParameter(deserializer, "deserializer");
        Intrinsics.checkNotNullParameter(string, "string");
        StringJsonLexer stringJsonLexer = new StringJsonLexer(string);
        T t = (T) new StreamingJsonDecoder(this, WriteMode.OBJ, stringJsonLexer, deserializer.getB(), null).G(deserializer);
        stringJsonLexer.v();
        return t;
    }

    @Override // kotlinx.serialization.StringFormat
    public final <T> String d(SerializationStrategy<? super T> serializer, T t) {
        Intrinsics.checkNotNullParameter(serializer, "serializer");
        JsonToStringWriter jsonToStringWriter = new JsonToStringWriter();
        try {
            JsonStreamsKt.encodeByWriter(this, jsonToStringWriter, serializer, t);
            return jsonToStringWriter.toString();
        } finally {
            jsonToStringWriter.g();
        }
    }

    public final <T> T f(DeserializationStrategy<T> deserializer, JsonElement element) {
        Intrinsics.checkNotNullParameter(deserializer, "deserializer");
        Intrinsics.checkNotNullParameter(element, "element");
        return (T) TreeJsonDecoderKt.readJson(this, element, deserializer);
    }

    public final <T> JsonElement g(SerializationStrategy<? super T> serializer, T t) {
        Intrinsics.checkNotNullParameter(serializer, "serializer");
        return TreeJsonEncoderKt.writeJson(this, t, serializer);
    }

    /* JADX INFO: renamed from: h, reason: from getter */
    public final JsonConfiguration getB() {
        return this.b;
    }

    /* JADX INFO: renamed from: i, reason: from getter */
    public final DescriptorSchemaCache getF10470d() {
        return this.f10470d;
    }
}
