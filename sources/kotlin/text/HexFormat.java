package kotlin.text;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.n;

/* JADX INFO: compiled from: HexFormat.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0007\u0018\u0000 \u00132\u00020\u0001:\u0004\u0011\u0012\u0013\u0014B\u001f\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\b\u0010\u000f\u001a\u00020\u0010H\u0016R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000e¨\u0006\u0015"}, d2 = {"Lkotlin/text/HexFormat;", "", "upperCase", "", "bytes", "Lkotlin/text/HexFormat$BytesHexFormat;", "number", "Lkotlin/text/HexFormat$NumberHexFormat;", "(ZLkotlin/text/HexFormat$BytesHexFormat;Lkotlin/text/HexFormat$NumberHexFormat;)V", "getBytes", "()Lkotlin/text/HexFormat$BytesHexFormat;", "getNumber", "()Lkotlin/text/HexFormat$NumberHexFormat;", "getUpperCase", "()Z", "toString", "", "Builder", "BytesHexFormat", "Companion", "NumberHexFormat", "kotlin-stdlib"}, mv = {1, 9, 0}, xi = 48)
public final class HexFormat {
    public static final a a = new a(null);
    private static final HexFormat b;
    private static final HexFormat c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f9951d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final BytesHexFormat f9952e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final NumberHexFormat f9953f;

    /* JADX INFO: compiled from: HexFormat.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000 \u001b2\u00020\u0001:\u0002\u001a\u001bB7\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0006¢\u0006\u0002\u0010\nJ%\u0010\u0013\u001a\u00060\u0014j\u0002`\u00152\n\u0010\u0016\u001a\u00060\u0014j\u0002`\u00152\u0006\u0010\u0017\u001a\u00020\u0006H\u0000¢\u0006\u0002\b\u0018J\b\u0010\u0019\u001a\u00020\u0006H\u0016R\u0011\u0010\b\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0007\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\fR\u0011\u0010\t\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\fR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0010R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\f¨\u0006\u001c"}, d2 = {"Lkotlin/text/HexFormat$BytesHexFormat;", "", "bytesPerLine", "", "bytesPerGroup", "groupSeparator", "", "byteSeparator", "bytePrefix", "byteSuffix", "(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getBytePrefix", "()Ljava/lang/String;", "getByteSeparator", "getByteSuffix", "getBytesPerGroup", "()I", "getBytesPerLine", "getGroupSeparator", "appendOptionsTo", "Ljava/lang/StringBuilder;", "Lkotlin/text/StringBuilder;", "sb", "indent", "appendOptionsTo$kotlin_stdlib", "toString", "Builder", "Companion", "kotlin-stdlib"}, mv = {1, 9, 0}, xi = 48)
    public static final class BytesHexFormat {
        public static final a a = new a(null);
        private static final BytesHexFormat b = new BytesHexFormat(Integer.MAX_VALUE, Integer.MAX_VALUE, "  ", "", "", "");
        private final int c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final int f9954d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final String f9955e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final String f9956f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final String f9957g;
        private final String h;

        /* JADX INFO: compiled from: HexFormat.kt */
        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0080\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0014\u0010\u0003\u001a\u00020\u0004X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lkotlin/text/HexFormat$BytesHexFormat$Companion;", "", "()V", "Default", "Lkotlin/text/HexFormat$BytesHexFormat;", "getDefault$kotlin_stdlib", "()Lkotlin/text/HexFormat$BytesHexFormat;", "kotlin-stdlib"}, mv = {1, 9, 0}, xi = 48)
        public static final class a {
            private a() {
            }

            public /* synthetic */ a(n nVar) {
                this();
            }

            public final BytesHexFormat a() {
                return BytesHexFormat.b;
            }
        }

        public BytesHexFormat(int i, int i2, String groupSeparator, String byteSeparator, String bytePrefix, String byteSuffix) {
            Intrinsics.checkNotNullParameter(groupSeparator, "groupSeparator");
            Intrinsics.checkNotNullParameter(byteSeparator, "byteSeparator");
            Intrinsics.checkNotNullParameter(bytePrefix, "bytePrefix");
            Intrinsics.checkNotNullParameter(byteSuffix, "byteSuffix");
            this.c = i;
            this.f9954d = i2;
            this.f9955e = groupSeparator;
            this.f9956f = byteSeparator;
            this.f9957g = bytePrefix;
            this.h = byteSuffix;
        }

        public final StringBuilder a(StringBuilder sb, String indent) {
            Intrinsics.checkNotNullParameter(sb, "sb");
            Intrinsics.checkNotNullParameter(indent, "indent");
            sb.append(indent);
            sb.append("bytesPerLine = ");
            sb.append(this.c);
            Intrinsics.checkNotNullExpressionValue(sb, "append(...)");
            sb.append(",");
            Intrinsics.checkNotNullExpressionValue(sb, "append(...)");
            sb.append('\n');
            Intrinsics.checkNotNullExpressionValue(sb, "append(...)");
            sb.append(indent);
            sb.append("bytesPerGroup = ");
            sb.append(this.f9954d);
            Intrinsics.checkNotNullExpressionValue(sb, "append(...)");
            sb.append(",");
            Intrinsics.checkNotNullExpressionValue(sb, "append(...)");
            sb.append('\n');
            Intrinsics.checkNotNullExpressionValue(sb, "append(...)");
            sb.append(indent);
            sb.append("groupSeparator = \"");
            sb.append(this.f9955e);
            Intrinsics.checkNotNullExpressionValue(sb, "append(...)");
            sb.append("\",");
            Intrinsics.checkNotNullExpressionValue(sb, "append(...)");
            sb.append('\n');
            Intrinsics.checkNotNullExpressionValue(sb, "append(...)");
            sb.append(indent);
            sb.append("byteSeparator = \"");
            sb.append(this.f9956f);
            Intrinsics.checkNotNullExpressionValue(sb, "append(...)");
            sb.append("\",");
            Intrinsics.checkNotNullExpressionValue(sb, "append(...)");
            sb.append('\n');
            Intrinsics.checkNotNullExpressionValue(sb, "append(...)");
            sb.append(indent);
            sb.append("bytePrefix = \"");
            sb.append(this.f9957g);
            Intrinsics.checkNotNullExpressionValue(sb, "append(...)");
            sb.append("\",");
            Intrinsics.checkNotNullExpressionValue(sb, "append(...)");
            sb.append('\n');
            Intrinsics.checkNotNullExpressionValue(sb, "append(...)");
            sb.append(indent);
            sb.append("byteSuffix = \"");
            sb.append(this.h);
            sb.append("\"");
            return sb;
        }

        /* JADX INFO: renamed from: b, reason: from getter */
        public final String getF9957g() {
            return this.f9957g;
        }

        /* JADX INFO: renamed from: c, reason: from getter */
        public final String getF9956f() {
            return this.f9956f;
        }

        /* JADX INFO: renamed from: d, reason: from getter */
        public final String getH() {
            return this.h;
        }

        /* JADX INFO: renamed from: e, reason: from getter */
        public final int getF9954d() {
            return this.f9954d;
        }

        /* JADX INFO: renamed from: f, reason: from getter */
        public final int getC() {
            return this.c;
        }

        /* JADX INFO: renamed from: g, reason: from getter */
        public final String getF9955e() {
            return this.f9955e;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append("BytesHexFormat(");
            Intrinsics.checkNotNullExpressionValue(sb, "append(...)");
            sb.append('\n');
            Intrinsics.checkNotNullExpressionValue(sb, "append(...)");
            StringBuilder sbA = a(sb, "    ");
            sbA.append('\n');
            Intrinsics.checkNotNullExpressionValue(sbA, "append(...)");
            sb.append(")");
            String string = sb.toString();
            Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
            return string;
        }
    }

    /* JADX INFO: compiled from: HexFormat.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000 \u00152\u00020\u0001:\u0002\u0014\u0015B\u001f\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J%\u0010\r\u001a\u00060\u000ej\u0002`\u000f2\n\u0010\u0010\u001a\u00060\u000ej\u0002`\u000f2\u0006\u0010\u0011\u001a\u00020\u0003H\u0000¢\u0006\u0002\b\u0012J\b\u0010\u0013\u001a\u00020\u0003H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\t¨\u0006\u0016"}, d2 = {"Lkotlin/text/HexFormat$NumberHexFormat;", "", "prefix", "", "suffix", "removeLeadingZeros", "", "(Ljava/lang/String;Ljava/lang/String;Z)V", "getPrefix", "()Ljava/lang/String;", "getRemoveLeadingZeros", "()Z", "getSuffix", "appendOptionsTo", "Ljava/lang/StringBuilder;", "Lkotlin/text/StringBuilder;", "sb", "indent", "appendOptionsTo$kotlin_stdlib", "toString", "Builder", "Companion", "kotlin-stdlib"}, mv = {1, 9, 0}, xi = 48)
    public static final class NumberHexFormat {
        public static final a a = new a(null);
        private static final NumberHexFormat b = new NumberHexFormat("", "", false);
        private final String c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final String f9958d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final boolean f9959e;

        /* JADX INFO: compiled from: HexFormat.kt */
        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0080\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0014\u0010\u0003\u001a\u00020\u0004X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lkotlin/text/HexFormat$NumberHexFormat$Companion;", "", "()V", "Default", "Lkotlin/text/HexFormat$NumberHexFormat;", "getDefault$kotlin_stdlib", "()Lkotlin/text/HexFormat$NumberHexFormat;", "kotlin-stdlib"}, mv = {1, 9, 0}, xi = 48)
        public static final class a {
            private a() {
            }

            public /* synthetic */ a(n nVar) {
                this();
            }

            public final NumberHexFormat a() {
                return NumberHexFormat.b;
            }
        }

        public NumberHexFormat(String prefix, String suffix, boolean z) {
            Intrinsics.checkNotNullParameter(prefix, "prefix");
            Intrinsics.checkNotNullParameter(suffix, "suffix");
            this.c = prefix;
            this.f9958d = suffix;
            this.f9959e = z;
        }

        public final StringBuilder a(StringBuilder sb, String indent) {
            Intrinsics.checkNotNullParameter(sb, "sb");
            Intrinsics.checkNotNullParameter(indent, "indent");
            sb.append(indent);
            sb.append("prefix = \"");
            sb.append(this.c);
            Intrinsics.checkNotNullExpressionValue(sb, "append(...)");
            sb.append("\",");
            Intrinsics.checkNotNullExpressionValue(sb, "append(...)");
            sb.append('\n');
            Intrinsics.checkNotNullExpressionValue(sb, "append(...)");
            sb.append(indent);
            sb.append("suffix = \"");
            sb.append(this.f9958d);
            Intrinsics.checkNotNullExpressionValue(sb, "append(...)");
            sb.append("\",");
            Intrinsics.checkNotNullExpressionValue(sb, "append(...)");
            sb.append('\n');
            Intrinsics.checkNotNullExpressionValue(sb, "append(...)");
            sb.append(indent);
            sb.append("removeLeadingZeros = ");
            sb.append(this.f9959e);
            return sb;
        }

        /* JADX INFO: renamed from: b, reason: from getter */
        public final String getC() {
            return this.c;
        }

        /* JADX INFO: renamed from: c, reason: from getter */
        public final boolean getF9959e() {
            return this.f9959e;
        }

        /* JADX INFO: renamed from: d, reason: from getter */
        public final String getF9958d() {
            return this.f9958d;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append("NumberHexFormat(");
            Intrinsics.checkNotNullExpressionValue(sb, "append(...)");
            sb.append('\n');
            Intrinsics.checkNotNullExpressionValue(sb, "append(...)");
            StringBuilder sbA = a(sb, "    ");
            sbA.append('\n');
            Intrinsics.checkNotNullExpressionValue(sbA, "append(...)");
            sb.append(")");
            String string = sb.toString();
            Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
            return string;
        }
    }

    /* JADX INFO: compiled from: HexFormat.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006R\u0011\u0010\u0007\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0006¨\u0006\t"}, d2 = {"Lkotlin/text/HexFormat$Companion;", "", "()V", "Default", "Lkotlin/text/HexFormat;", "getDefault", "()Lkotlin/text/HexFormat;", "UpperCase", "getUpperCase", "kotlin-stdlib"}, mv = {1, 9, 0}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(n nVar) {
            this();
        }

        public final HexFormat a() {
            return HexFormat.b;
        }
    }

    static {
        BytesHexFormat.a aVar = BytesHexFormat.a;
        BytesHexFormat bytesHexFormatA = aVar.a();
        NumberHexFormat.a aVar2 = NumberHexFormat.a;
        b = new HexFormat(false, bytesHexFormatA, aVar2.a());
        c = new HexFormat(true, aVar.a(), aVar2.a());
    }

    public HexFormat(boolean z, BytesHexFormat bytes, NumberHexFormat number) {
        Intrinsics.checkNotNullParameter(bytes, "bytes");
        Intrinsics.checkNotNullParameter(number, "number");
        this.f9951d = z;
        this.f9952e = bytes;
        this.f9953f = number;
    }

    /* JADX INFO: renamed from: a, reason: from getter */
    public final BytesHexFormat getF9952e() {
        return this.f9952e;
    }

    /* JADX INFO: renamed from: b, reason: from getter */
    public final NumberHexFormat getF9953f() {
        return this.f9953f;
    }

    /* JADX INFO: renamed from: c, reason: from getter */
    public final boolean getF9951d() {
        return this.f9951d;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("HexFormat(");
        Intrinsics.checkNotNullExpressionValue(sb, "append(...)");
        sb.append('\n');
        Intrinsics.checkNotNullExpressionValue(sb, "append(...)");
        sb.append("    upperCase = ");
        sb.append(this.f9951d);
        Intrinsics.checkNotNullExpressionValue(sb, "append(...)");
        sb.append(",");
        Intrinsics.checkNotNullExpressionValue(sb, "append(...)");
        sb.append('\n');
        Intrinsics.checkNotNullExpressionValue(sb, "append(...)");
        sb.append("    bytes = BytesHexFormat(");
        Intrinsics.checkNotNullExpressionValue(sb, "append(...)");
        sb.append('\n');
        Intrinsics.checkNotNullExpressionValue(sb, "append(...)");
        StringBuilder sbA = this.f9952e.a(sb, "        ");
        sbA.append('\n');
        Intrinsics.checkNotNullExpressionValue(sbA, "append(...)");
        sb.append("    ),");
        Intrinsics.checkNotNullExpressionValue(sb, "append(...)");
        sb.append('\n');
        Intrinsics.checkNotNullExpressionValue(sb, "append(...)");
        sb.append("    number = NumberHexFormat(");
        Intrinsics.checkNotNullExpressionValue(sb, "append(...)");
        sb.append('\n');
        Intrinsics.checkNotNullExpressionValue(sb, "append(...)");
        StringBuilder sbA2 = this.f9953f.a(sb, "        ");
        sbA2.append('\n');
        Intrinsics.checkNotNullExpressionValue(sbA2, "append(...)");
        sb.append("    )");
        Intrinsics.checkNotNullExpressionValue(sb, "append(...)");
        sb.append('\n');
        Intrinsics.checkNotNullExpressionValue(sb, "append(...)");
        sb.append(")");
        String string = sb.toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        return string;
    }
}
