###### Class kotlinx.serialization.builtins.BuiltinSerializersKt (kotlinx.serialization.builtins.BuiltinSerializersKt)
.class public final Lkotlinx/serialization/builtins/BuiltinSerializersKt;
.super Ljava/lang/Object;
.source "BuiltinSerializers.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008a\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0005\n\u0002\u0010\u0011\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0018\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0019\n\u0000\n\u0002\u0010\u0013\n\u0000\n\u0002\u0010\u0014\n\u0000\n\u0002\u0010\u0015\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0016\n\u0000\n\u0002\u0010&\n\u0002\u0008\u0005\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0000\n\u0002\u0010\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0006\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\u0010\n\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001aF\u0010\u0008\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\n0\t0\u0001\"\u0008\u0008\u0000\u0010\u0002*\u00020\u0003\"\n\u0008\u0001\u0010\n*\u0004\u0018\u0001H\u00022\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u000c2\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u0002H\n0\u0001H\u0007\u001a=\u0010\u0008\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\n0\t0\u0001\"\n\u0008\u0000\u0010\u0002\u0018\u0001*\u00020\u0003\"\u000c\u0008\u0001\u0010\n\u0018\u0001*\u0004\u0018\u0001H\u00022\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u0002H\n0\u0001H\u0087\u0008\u001a\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u0001\u001a\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0001\u001a\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u0001\u001a\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u0001\u001a\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u0001\u001a\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u0001\u001a&\u0010\u001a\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00020\u001b0\u0001\"\u0004\u0008\u0000\u0010\u00022\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\u001a\u000c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u001d0\u0001\u001a@\u0010\u001e\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u0002H \u0012\u0004\u0012\u0002H!0\u001f0\u0001\"\u0004\u0008\u0000\u0010 \"\u0004\u0008\u0001\u0010!2\u000c\u0010\"\u001a\u0008\u0012\u0004\u0012\u0002H 0\u00012\u000c\u0010#\u001a\u0008\u0012\u0004\u0012\u0002H!0\u0001\u001a@\u0010$\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u0002H \u0012\u0004\u0012\u0002H!0%0\u0001\"\u0004\u0008\u0000\u0010 \"\u0004\u0008\u0001\u0010!2\u000c\u0010\"\u001a\u0008\u0012\u0004\u0012\u0002H 0\u00012\u000c\u0010#\u001a\u0008\u0012\u0004\u0012\u0002H!0\u0001\u001a@\u0010&\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u0002H \u0012\u0004\u0012\u0002H!0\'0\u0001\"\u0004\u0008\u0000\u0010 \"\u0004\u0008\u0001\u0010!2\u000c\u0010\"\u001a\u0008\u0012\u0004\u0012\u0002H 0\u00012\u000c\u0010#\u001a\u0008\u0012\u0004\u0012\u0002H!0\u0001\u001a&\u0010(\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00020)0\u0001\"\u0004\u0008\u0000\u0010\u00022\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\u001a\u000c\u0010*\u001a\u0008\u0012\u0004\u0012\u00020+0\u0001\u001aZ\u0010,\u001a\u001a\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u0002H.\u0012\u0004\u0012\u0002H/\u0012\u0004\u0012\u0002H00-0\u0001\"\u0004\u0008\u0000\u0010.\"\u0004\u0008\u0001\u0010/\"\u0004\u0008\u0002\u001002\u000c\u00101\u001a\u0008\u0012\u0004\u0012\u0002H.0\u00012\u000c\u00102\u001a\u0008\u0012\u0004\u0012\u0002H/0\u00012\u000c\u00103\u001a\u0008\u0012\u0004\u0012\u0002H00\u0001\u001a\u0011\u00104\u001a\u0008\u0012\u0004\u0012\u0002050\u0001H\u0007\u00f8\u0001\u0000\u001a\u0011\u00106\u001a\u0008\u0012\u0004\u0012\u0002070\u0001H\u0007\u00f8\u0001\u0000\u001a\u0011\u00108\u001a\u0008\u0012\u0004\u0012\u0002090\u0001H\u0007\u00f8\u0001\u0000\u001a\u0011\u0010:\u001a\u0008\u0012\u0004\u0012\u00020;0\u0001H\u0007\u00f8\u0001\u0000\u001a\u0015\u0010<\u001a\u0008\u0012\u0004\u0012\u00020=0\u0001*\u00020>\u00a2\u0006\u0002\u0010?\u001a\u0010\u0010<\u001a\u0008\u0012\u0004\u0012\u00020@0\u0001*\u00020A\u001a\u0010\u0010<\u001a\u0008\u0012\u0004\u0012\u00020B0\u0001*\u00020C\u001a\u0010\u0010<\u001a\u0008\u0012\u0004\u0012\u00020D0\u0001*\u00020E\u001a\u0010\u0010<\u001a\u0008\u0012\u0004\u0012\u00020F0\u0001*\u00020G\u001a\u0010\u0010<\u001a\u0008\u0012\u0004\u0012\u00020H0\u0001*\u00020I\u001a\u0010\u0010<\u001a\u0008\u0012\u0004\u0012\u00020J0\u0001*\u00020K\u001a\u0010\u0010<\u001a\u0008\u0012\u0004\u0012\u00020L0\u0001*\u00020M\u001a\u0010\u0010<\u001a\u0008\u0012\u0004\u0012\u00020N0\u0001*\u00020O\u001a\u0013\u0010<\u001a\u0008\u0012\u0004\u0012\u00020P0\u0001*\u00020Q\u00f8\u0001\u0000\u001a\u0013\u0010<\u001a\u0008\u0012\u0004\u0012\u00020R0\u0001*\u00020S\u00f8\u0001\u0000\u001a\u0013\u0010<\u001a\u0008\u0012\u0004\u0012\u00020T0\u0001*\u00020U\u00f8\u0001\u0000\u001a\u0013\u0010<\u001a\u0008\u0012\u0004\u0012\u00020V0\u0001*\u00020W\u00f8\u0001\u0000\u001a\u0015\u0010<\u001a\u0008\u0012\u0004\u0012\u00020X0\u0001*\u00020X\u00a2\u0006\u0002\u0010Y\u001a\u0013\u0010<\u001a\u0008\u0012\u0004\u0012\u00020Z0\u0001*\u00020[\u00f8\u0001\u0000\"3\u0010\u0000\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001H\u00020\u0001\"\u0008\u0008\u0000\u0010\u0002*\u00020\u0003*\u0008\u0012\u0004\u0012\u0002H\u00020\u00018F\u00a2\u0006\u000c\u0012\u0004\u0008\u0004\u0010\u0005\u001a\u0004\u0008\u0006\u0010\u0007\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\\"
    }
    d2 = {
        "nullable",
        "Lkotlinx/serialization/KSerializer;",
        "T",
        "",
        "getNullable$annotations",
        "(Lkotlinx/serialization/KSerializer;)V",
        "getNullable",
        "(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;",
        "ArraySerializer",
        "",
        "E",
        "kClass",
        "Lkotlin/reflect/KClass;",
        "elementSerializer",
        "BooleanArraySerializer",
        "",
        "ByteArraySerializer",
        "",
        "CharArraySerializer",
        "",
        "DoubleArraySerializer",
        "",
        "FloatArraySerializer",
        "",
        "IntArraySerializer",
        "",
        "ListSerializer",
        "",
        "LongArraySerializer",
        "",
        "MapEntrySerializer",
        "",
        "K",
        "V",
        "keySerializer",
        "valueSerializer",
        "MapSerializer",
        "",
        "PairSerializer",
        "Lkotlin/Pair;",
        "SetSerializer",
        "",
        "ShortArraySerializer",
        "",
        "TripleSerializer",
        "Lkotlin/Triple;",
        "A",
        "B",
        "C",
        "aSerializer",
        "bSerializer",
        "cSerializer",
        "UByteArraySerializer",
        "Lkotlin/UByteArray;",
        "UIntArraySerializer",
        "Lkotlin/UIntArray;",
        "ULongArraySerializer",
        "Lkotlin/ULongArray;",
        "UShortArraySerializer",
        "Lkotlin/UShortArray;",
        "serializer",
        "",
        "Lkotlin/Boolean$Companion;",
        "(Lkotlin/jvm/internal/BooleanCompanionObject;)Lkotlinx/serialization/KSerializer;",
        "",
        "Lkotlin/Byte$Companion;",
        "",
        "Lkotlin/Char$Companion;",
        "",
        "Lkotlin/Double$Companion;",
        "",
        "Lkotlin/Float$Companion;",
        "",
        "Lkotlin/Int$Companion;",
        "",
        "Lkotlin/Long$Companion;",
        "",
        "Lkotlin/Short$Companion;",
        "",
        "Lkotlin/String$Companion;",
        "Lkotlin/UByte;",
        "Lkotlin/UByte$Companion;",
        "Lkotlin/UInt;",
        "Lkotlin/UInt$Companion;",
        "Lkotlin/ULong;",
        "Lkotlin/ULong$Companion;",
        "Lkotlin/UShort;",
        "Lkotlin/UShort$Companion;",
        "",
        "(Lkotlin/Unit;)Lkotlinx/serialization/KSerializer;",
        "Lkotlin/time/Duration;",
        "Lkotlin/time/Duration$Companion;",
        "kotlinx-serialization-core"
    }
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final ArraySerializer(Lkotlin/reflect/KClass;Lkotlinx/serialization/c;)Lkotlinx/serialization/c;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "E::TT;>(",
            "Lkotlin/reflect/KClass<",
            "TT;>;",
            "Lkotlinx/serialization/c<",
            "TE;>;)",
            "Lkotlinx/serialization/c<",
            "[TE;>;"
        }
    .end annotation

    const-string v0, "kClass"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "elementSerializer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlinx/serialization/internal/c1;

    invoke-direct {v0, p0, p1}, Lkotlinx/serialization/internal/c1;-><init>(Lkotlin/reflect/KClass;Lkotlinx/serialization/c;)V

    return-object v0
.end method

.method public static final synthetic ArraySerializer(Lkotlinx/serialization/c;)Lkotlinx/serialization/c;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "E::TT;>(",
            "Lkotlinx/serialization/c<",
            "TE;>;)",
            "Lkotlinx/serialization/c<",
            "[TE;>;"
        }
    .end annotation

    const-string v0, "elementSerializer"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x4

    const-string v1, "T"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v0, Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-static {v0, p0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->ArraySerializer(Lkotlin/reflect/KClass;Lkotlinx/serialization/c;)Lkotlinx/serialization/c;

    move-result-object p0

    return-object p0
.end method

.method public static final BooleanArraySerializer()Lkotlinx/serialization/c;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/c<",
            "[Z>;"
        }
    .end annotation

    sget-object v0, Lkotlinx/serialization/internal/e;->c:Lkotlinx/serialization/internal/e;

    return-object v0
.end method

.method public static final ByteArraySerializer()Lkotlinx/serialization/c;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/c<",
            "[B>;"
        }
    .end annotation

    sget-object v0, Lkotlinx/serialization/internal/h;->c:Lkotlinx/serialization/internal/h;

    return-object v0
.end method

.method public static final CharArraySerializer()Lkotlinx/serialization/c;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/c<",
            "[C>;"
        }
    .end annotation

    sget-object v0, Lkotlinx/serialization/internal/m;->c:Lkotlinx/serialization/internal/m;

    return-object v0
.end method

.method public static final DoubleArraySerializer()Lkotlinx/serialization/c;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/c<",
            "[D>;"
        }
    .end annotation

    sget-object v0, Lkotlinx/serialization/internal/t;->c:Lkotlinx/serialization/internal/t;

    return-object v0
.end method

.method public static final FloatArraySerializer()Lkotlinx/serialization/c;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/c<",
            "[F>;"
        }
    .end annotation

    sget-object v0, Lkotlinx/serialization/internal/z;->c:Lkotlinx/serialization/internal/z;

    return-object v0
.end method

.method public static final IntArraySerializer()Lkotlinx/serialization/c;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/c<",
            "[I>;"
        }
    .end annotation

    sget-object v0, Lkotlinx/serialization/internal/h0;->c:Lkotlinx/serialization/internal/h0;

    return-object v0
.end method

.method public static final ListSerializer(Lkotlinx/serialization/c;)Lkotlinx/serialization/c;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/c<",
            "TT;>;)",
            "Lkotlinx/serialization/c<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    const-string v0, "elementSerializer"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlinx/serialization/internal/c;

    invoke-direct {v0, p0}, Lkotlinx/serialization/internal/c;-><init>(Lkotlinx/serialization/c;)V

    return-object v0
.end method

.method public static final LongArraySerializer()Lkotlinx/serialization/c;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/c<",
            "[J>;"
        }
    .end annotation

    sget-object v0, Lkotlinx/serialization/internal/q0;->c:Lkotlinx/serialization/internal/q0;

    return-object v0
.end method

.method public static final MapEntrySerializer(Lkotlinx/serialization/c;Lkotlinx/serialization/c;)Lkotlinx/serialization/c;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/c<",
            "TK;>;",
            "Lkotlinx/serialization/c<",
            "TV;>;)",
            "Lkotlinx/serialization/c<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    const-string v0, "keySerializer"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "valueSerializer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlinx/serialization/internal/MapEntrySerializer;

    invoke-direct {v0, p0, p1}, Lkotlinx/serialization/internal/MapEntrySerializer;-><init>(Lkotlinx/serialization/c;Lkotlinx/serialization/c;)V

    return-object v0
.end method

.method public static final MapSerializer(Lkotlinx/serialization/c;Lkotlinx/serialization/c;)Lkotlinx/serialization/c;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/c<",
            "TK;>;",
            "Lkotlinx/serialization/c<",
            "TV;>;)",
            "Lkotlinx/serialization/c<",
            "Ljava/util/Map<",
            "TK;TV;>;>;"
        }
    .end annotation

    const-string v0, "keySerializer"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "valueSerializer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlinx/serialization/internal/l0;

    invoke-direct {v0, p0, p1}, Lkotlinx/serialization/internal/l0;-><init>(Lkotlinx/serialization/c;Lkotlinx/serialization/c;)V

    return-object v0
.end method

.method public static final PairSerializer(Lkotlinx/serialization/c;Lkotlinx/serialization/c;)Lkotlinx/serialization/c;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/c<",
            "TK;>;",
            "Lkotlinx/serialization/c<",
            "TV;>;)",
            "Lkotlinx/serialization/c<",
            "Lkotlin/Pair<",
            "TK;TV;>;>;"
        }
    .end annotation

    const-string v0, "keySerializer"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "valueSerializer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlinx/serialization/internal/y0;

    invoke-direct {v0, p0, p1}, Lkotlinx/serialization/internal/y0;-><init>(Lkotlinx/serialization/c;Lkotlinx/serialization/c;)V

    return-object v0
.end method

.method public static final SetSerializer(Lkotlinx/serialization/c;)Lkotlinx/serialization/c;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/c<",
            "TT;>;)",
            "Lkotlinx/serialization/c<",
            "Ljava/util/Set<",
            "TT;>;>;"
        }
    .end annotation

    const-string v0, "elementSerializer"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlinx/serialization/internal/n0;

    invoke-direct {v0, p0}, Lkotlinx/serialization/internal/n0;-><init>(Lkotlinx/serialization/c;)V

    return-object v0
.end method

.method public static final ShortArraySerializer()Lkotlinx/serialization/c;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/c<",
            "[S>;"
        }
    .end annotation

    sget-object v0, Lkotlinx/serialization/internal/h1;->c:Lkotlinx/serialization/internal/h1;

    return-object v0
.end method

.method public static final TripleSerializer(Lkotlinx/serialization/c;Lkotlinx/serialization/c;Lkotlinx/serialization/c;)Lkotlinx/serialization/c;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/c<",
            "TA;>;",
            "Lkotlinx/serialization/c<",
            "TB;>;",
            "Lkotlinx/serialization/c<",
            "TC;>;)",
            "Lkotlinx/serialization/c<",
            "Lkotlin/Triple<",
            "TA;TB;TC;>;>;"
        }
    .end annotation

    const-string v0, "aSerializer"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bSerializer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cSerializer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlinx/serialization/internal/TripleSerializer;

    invoke-direct {v0, p0, p1, p2}, Lkotlinx/serialization/internal/TripleSerializer;-><init>(Lkotlinx/serialization/c;Lkotlinx/serialization/c;Lkotlinx/serialization/c;)V

    return-object v0
.end method

.method public static final UByteArraySerializer()Lkotlinx/serialization/c;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/c<",
            "Lkotlin/UByteArray;",
            ">;"
        }
    .end annotation

    sget-object v0, Lkotlinx/serialization/internal/n1;->c:Lkotlinx/serialization/internal/n1;

    return-object v0
.end method

.method public static final UIntArraySerializer()Lkotlinx/serialization/c;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/c<",
            "Lkotlin/UIntArray;",
            ">;"
        }
    .end annotation

    sget-object v0, Lkotlinx/serialization/internal/q1;->c:Lkotlinx/serialization/internal/q1;

    return-object v0
.end method

.method public static final ULongArraySerializer()Lkotlinx/serialization/c;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/c<",
            "Lkotlin/ULongArray;",
            ">;"
        }
    .end annotation

    sget-object v0, Lkotlinx/serialization/internal/t1;->c:Lkotlinx/serialization/internal/t1;

    return-object v0
.end method

.method public static final UShortArraySerializer()Lkotlinx/serialization/c;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/c<",
            "Lkotlin/UShortArray;",
            ">;"
        }
    .end annotation

    sget-object v0, Lkotlinx/serialization/internal/w1;->c:Lkotlinx/serialization/internal/w1;

    return-object v0
.end method

.method public static final getNullable(Lkotlinx/serialization/c;)Lkotlinx/serialization/c;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/c<",
            "TT;>;)",
            "Lkotlinx/serialization/c<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lkotlinx/serialization/c;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->b()Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_16

    :cond_10
    new-instance v0, Lkotlinx/serialization/internal/x0;

    invoke-direct {v0, p0}, Lkotlinx/serialization/internal/x0;-><init>(Lkotlinx/serialization/c;)V

    move-object p0, v0

    :goto_16
    return-object p0
.end method

.method public static synthetic getNullable$annotations(Lkotlinx/serialization/c;)V
    .registers 1

    return-void
.end method

.method public static final serializer(Lkotlin/UByte$a;)Lkotlinx/serialization/c;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/UByte$a;",
            ")",
            "Lkotlinx/serialization/c<",
            "Lkotlin/UByte;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lkotlinx/serialization/internal/o1;->a:Lkotlinx/serialization/internal/o1;

    return-object p0
.end method

.method public static final serializer(Lkotlin/UInt$a;)Lkotlinx/serialization/c;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/UInt$a;",
            ")",
            "Lkotlinx/serialization/c<",
            "Lkotlin/UInt;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lkotlinx/serialization/internal/r1;->a:Lkotlinx/serialization/internal/r1;

    return-object p0
.end method

.method public static final serializer(Lkotlin/ULong$a;)Lkotlinx/serialization/c;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/ULong$a;",
            ")",
            "Lkotlinx/serialization/c<",
            "Lkotlin/ULong;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lkotlinx/serialization/internal/u1;->a:Lkotlinx/serialization/internal/u1;

    return-object p0
.end method

.method public static final serializer(Lkotlin/UShort$a;)Lkotlinx/serialization/c;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/UShort$a;",
            ")",
            "Lkotlinx/serialization/c<",
            "Lkotlin/UShort;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lkotlinx/serialization/internal/x1;->a:Lkotlinx/serialization/internal/x1;

    return-object p0
.end method

.method public static final serializer(Lkotlin/jvm/internal/ByteCompanionObject;)Lkotlinx/serialization/c;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/ByteCompanionObject;",
            ")",
            "Lkotlinx/serialization/c<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lkotlinx/serialization/internal/i;->a:Lkotlinx/serialization/internal/i;

    return-object p0
.end method

.method public static final serializer(Lkotlin/jvm/internal/CharCompanionObject;)Lkotlinx/serialization/c;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/CharCompanionObject;",
            ")",
            "Lkotlinx/serialization/c<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lkotlinx/serialization/internal/n;->a:Lkotlinx/serialization/internal/n;

    return-object p0
.end method

.method public static final serializer(Lkotlin/jvm/internal/DoubleCompanionObject;)Lkotlinx/serialization/c;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/DoubleCompanionObject;",
            ")",
            "Lkotlinx/serialization/c<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lkotlinx/serialization/internal/u;->a:Lkotlinx/serialization/internal/u;

    return-object p0
.end method

.method public static final serializer(Lkotlin/jvm/internal/FloatCompanionObject;)Lkotlinx/serialization/c;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/FloatCompanionObject;",
            ")",
            "Lkotlinx/serialization/c<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lkotlinx/serialization/internal/a0;->a:Lkotlinx/serialization/internal/a0;

    return-object p0
.end method

.method public static final serializer(Lkotlin/jvm/internal/IntCompanionObject;)Lkotlinx/serialization/c;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/IntCompanionObject;",
            ")",
            "Lkotlinx/serialization/c<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lkotlinx/serialization/internal/i0;->a:Lkotlinx/serialization/internal/i0;

    return-object p0
.end method

.method public static final serializer(Lkotlin/jvm/internal/LongCompanionObject;)Lkotlinx/serialization/c;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/LongCompanionObject;",
            ")",
            "Lkotlinx/serialization/c<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lkotlinx/serialization/internal/r0;->a:Lkotlinx/serialization/internal/r0;

    return-object p0
.end method

.method public static final serializer(Lkotlin/jvm/internal/ShortCompanionObject;)Lkotlinx/serialization/c;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/ShortCompanionObject;",
            ")",
            "Lkotlinx/serialization/c<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lkotlinx/serialization/internal/i1;->a:Lkotlinx/serialization/internal/i1;

    return-object p0
.end method

.method public static final serializer(Lkotlin/jvm/internal/k;)Lkotlinx/serialization/c;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/k;",
            ")",
            "Lkotlinx/serialization/c<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lkotlinx/serialization/internal/f;->a:Lkotlinx/serialization/internal/f;

    return-object p0
.end method

.method public static final serializer(Lkotlin/jvm/internal/o0;)Lkotlinx/serialization/c;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/o0;",
            ")",
            "Lkotlinx/serialization/c<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lkotlinx/serialization/internal/j1;->a:Lkotlinx/serialization/internal/j1;

    return-object p0
.end method

.method public static final serializer(Lkotlin/time/Duration$Companion;)Lkotlinx/serialization/c;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/time/Duration$Companion;",
            ")",
            "Lkotlinx/serialization/c<",
            "Lkotlin/time/Duration;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lkotlinx/serialization/internal/v;->a:Lkotlinx/serialization/internal/v;

    return-object p0
.end method

.method public static final serializer(Lkotlin/v;)Lkotlinx/serialization/c;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/v;",
            ")",
            "Lkotlinx/serialization/c<",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lkotlinx/serialization/internal/y1;->a:Lkotlinx/serialization/internal/y1;

    return-object p0
.end method
