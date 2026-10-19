###### Class com.google.protobuf.t0 (com.google.protobuf.t0)
.class final Lcom/google/protobuf/t0;
.super Ljava/lang/Object;
.source "MessageSchema.java"

# interfaces
.implements Lcom/google/protobuf/l1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/l1<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final EMPTY_INT_ARRAY:[I

.field private static final ENFORCE_UTF8_MASK:I = 0x20000000

.field private static final FIELD_TYPE_MASK:I = 0xff00000

.field private static final INTS_PER_FIELD:I = 0x3

.field private static final NO_PRESENCE_SENTINEL:I = 0xfffff

.field private static final OFFSET_BITS:I = 0x14

.field private static final OFFSET_MASK:I = 0xfffff

.field static final ONEOF_TYPE_OFFSET:I = 0x33

.field private static final REQUIRED_MASK:I = 0x10000000

.field private static final UNSAFE:Lsun/misc/Unsafe;


# instance fields
.field private final buffer:[I

.field private final checkInitializedCount:I

.field private final defaultInstance:Lcom/google/protobuf/q0;

.field private final extensionSchema:Lcom/google/protobuf/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/u<",
            "*>;"
        }
    .end annotation
.end field

.field private final hasExtensions:Z

.field private final intArray:[I

.field private final listFieldSchema:Lcom/google/protobuf/i0;

.field private final lite:Z

.field private final mapFieldSchema:Lcom/google/protobuf/l0;

.field private final maxFieldNumber:I

.field private final minFieldNumber:I

.field private final newInstanceSchema:Lcom/google/protobuf/z0;

.field private final objects:[Ljava/lang/Object;

.field private final proto3:Z

.field private final repeatedFieldOffsetStart:I

.field private final unknownFieldSchema:Lcom/google/protobuf/y1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/y1<",
            "**>;"
        }
    .end annotation
.end field

.field private final useCachedSizeField:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/protobuf/t0;->EMPTY_INT_ARRAY:[I

    invoke-static {}, Lcom/google/protobuf/b2;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/t0;->UNSAFE:Lsun/misc/Unsafe;

    return-void
.end method

.method private constructor <init>([I[Ljava/lang/Object;IILcom/google/protobuf/q0;ZZ[IIILcom/google/protobuf/z0;Lcom/google/protobuf/i0;Lcom/google/protobuf/y1;Lcom/google/protobuf/u;Lcom/google/protobuf/l0;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I[",
            "Ljava/lang/Object;",
            "II",
            "Lcom/google/protobuf/q0;",
            "ZZ[III",
            "Lcom/google/protobuf/z0;",
            "Lcom/google/protobuf/i0;",
            "Lcom/google/protobuf/y1<",
            "**>;",
            "Lcom/google/protobuf/u<",
            "*>;",
            "Lcom/google/protobuf/l0;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/protobuf/t0;->buffer:[I

    iput-object p2, p0, Lcom/google/protobuf/t0;->objects:[Ljava/lang/Object;

    iput p3, p0, Lcom/google/protobuf/t0;->minFieldNumber:I

    iput p4, p0, Lcom/google/protobuf/t0;->maxFieldNumber:I

    instance-of p1, p5, Lcom/google/protobuf/GeneratedMessageLite;

    iput-boolean p1, p0, Lcom/google/protobuf/t0;->lite:Z

    iput-boolean p6, p0, Lcom/google/protobuf/t0;->proto3:Z

    if-eqz p14, :cond_1b

    invoke-virtual {p14, p5}, Lcom/google/protobuf/u;->hasExtensions(Lcom/google/protobuf/q0;)Z

    move-result p1

    if-eqz p1, :cond_1b

    const/4 p1, 0x1

    goto :goto_1c

    :cond_1b
    const/4 p1, 0x0

    :goto_1c
    iput-boolean p1, p0, Lcom/google/protobuf/t0;->hasExtensions:Z

    iput-boolean p7, p0, Lcom/google/protobuf/t0;->useCachedSizeField:Z

    iput-object p8, p0, Lcom/google/protobuf/t0;->intArray:[I

    iput p9, p0, Lcom/google/protobuf/t0;->checkInitializedCount:I

    iput p10, p0, Lcom/google/protobuf/t0;->repeatedFieldOffsetStart:I

    iput-object p11, p0, Lcom/google/protobuf/t0;->newInstanceSchema:Lcom/google/protobuf/z0;

    iput-object p12, p0, Lcom/google/protobuf/t0;->listFieldSchema:Lcom/google/protobuf/i0;

    iput-object p13, p0, Lcom/google/protobuf/t0;->unknownFieldSchema:Lcom/google/protobuf/y1;

    iput-object p14, p0, Lcom/google/protobuf/t0;->extensionSchema:Lcom/google/protobuf/u;

    iput-object p5, p0, Lcom/google/protobuf/t0;->defaultInstance:Lcom/google/protobuf/q0;

    iput-object p15, p0, Lcom/google/protobuf/t0;->mapFieldSchema:Lcom/google/protobuf/l0;

    return-void
.end method

.method private arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)Z"
        }
    .end annotation

    invoke-direct {p0, p1, p3}, Lcom/google/protobuf/t0;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result p1

    invoke-direct {p0, p2, p3}, Lcom/google/protobuf/t0;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result p2

    if-ne p1, p2, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method

.method private static booleanAt(Ljava/lang/Object;J)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)Z"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/google/protobuf/b2;->getBoolean(Ljava/lang/Object;J)Z

    move-result p0

    return p0
.end method

.method private static checkMutable(Ljava/lang/Object;)V
    .registers 4

    invoke-static {p0}, Lcom/google/protobuf/t0;->isMutable(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mutating immutable message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private decodeMapEntry([BIILcom/google/protobuf/MapEntryLite$b;Ljava/util/Map;Lcom/google/protobuf/h$b;)I
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">([BII",
            "Lcom/google/protobuf/MapEntryLite$b<",
            "TK;TV;>;",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lcom/google/protobuf/h$b;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v7, p1

    move/from16 v8, p3

    move-object/from16 v9, p4

    move/from16 v0, p2

    move-object/from16 v10, p6

    invoke-static {p1, v0, v10}, Lcom/google/protobuf/h;->decodeVarint32([BILcom/google/protobuf/h$b;)I

    move-result v0

    iget v1, v10, Lcom/google/protobuf/h$b;->int1:I

    if-ltz v1, :cond_81

    sub-int v2, v8, v0

    if-gt v1, v2, :cond_81

    add-int v11, v0, v1

    iget-object v1, v9, Lcom/google/protobuf/MapEntryLite$b;->defaultKey:Ljava/lang/Object;

    iget-object v2, v9, Lcom/google/protobuf/MapEntryLite$b;->defaultValue:Ljava/lang/Object;

    move-object v12, v1

    move-object v13, v2

    :goto_1d
    if-ge v0, v11, :cond_74

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v7, v0

    if-gez v0, :cond_2e

    invoke-static {v0, p1, v1, v10}, Lcom/google/protobuf/h;->decodeVarint32(I[BILcom/google/protobuf/h$b;)I

    move-result v0

    iget v1, v10, Lcom/google/protobuf/h$b;->int1:I

    move v2, v0

    move v0, v1

    goto :goto_2f

    :cond_2e
    move v2, v1

    :goto_2f
    ushr-int/lit8 v1, v0, 0x3

    and-int/lit8 v3, v0, 0x7

    const/4 v4, 0x1

    if-eq v1, v4, :cond_57

    const/4 v4, 0x2

    if-eq v1, v4, :cond_3a

    goto :goto_6f

    :cond_3a
    iget-object v1, v9, Lcom/google/protobuf/MapEntryLite$b;->valueType:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-virtual {v1}, Lcom/google/protobuf/WireFormat$FieldType;->getWireType()I

    move-result v1

    if-ne v3, v1, :cond_6f

    iget-object v4, v9, Lcom/google/protobuf/MapEntryLite$b;->valueType:Lcom/google/protobuf/WireFormat$FieldType;

    iget-object v0, v9, Lcom/google/protobuf/MapEntryLite$b;->defaultValue:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move/from16 v3, p3

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/google/protobuf/t0;->decodeMapEntryValue([BIILcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Class;Lcom/google/protobuf/h$b;)I

    move-result v0

    iget-object v13, v10, Lcom/google/protobuf/h$b;->object1:Ljava/lang/Object;

    goto :goto_1d

    :cond_57
    iget-object v1, v9, Lcom/google/protobuf/MapEntryLite$b;->keyType:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-virtual {v1}, Lcom/google/protobuf/WireFormat$FieldType;->getWireType()I

    move-result v1

    if-ne v3, v1, :cond_6f

    iget-object v4, v9, Lcom/google/protobuf/MapEntryLite$b;->keyType:Lcom/google/protobuf/WireFormat$FieldType;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move/from16 v3, p3

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/google/protobuf/t0;->decodeMapEntryValue([BIILcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Class;Lcom/google/protobuf/h$b;)I

    move-result v0

    iget-object v12, v10, Lcom/google/protobuf/h$b;->object1:Ljava/lang/Object;

    goto :goto_1d

    :cond_6f
    :goto_6f
    invoke-static {v0, p1, v2, v8, v10}, Lcom/google/protobuf/h;->skipField(I[BIILcom/google/protobuf/h$b;)I

    move-result v0

    goto :goto_1d

    :cond_74
    if-ne v0, v11, :cond_7c

    move-object/from16 v0, p5

    invoke-interface {v0, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v11

    :cond_7c
    invoke-static {}, Lcom/google/protobuf/d0;->parseFailure()Lcom/google/protobuf/d0;

    move-result-object v0

    throw v0

    :cond_81
    invoke-static {}, Lcom/google/protobuf/d0;->truncatedMessage()Lcom/google/protobuf/d0;

    move-result-object v0

    throw v0
.end method

.method private decodeMapEntryValue([BIILcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Class;Lcom/google/protobuf/h$b;)I
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lcom/google/protobuf/WireFormat$FieldType;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/protobuf/h$b;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/t0$a;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result p4

    aget p4, v0, p4

    packed-switch p4, :pswitch_data_b0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "unsupported field type."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_13
    invoke-static {p1, p2, p6}, Lcom/google/protobuf/h;->decodeStringRequireUtf8([BILcom/google/protobuf/h$b;)I

    move-result p1

    goto/16 :goto_ae

    :pswitch_19
    invoke-static {p1, p2, p6}, Lcom/google/protobuf/h;->decodeVarint64([BILcom/google/protobuf/h$b;)I

    move-result p1

    iget-wide p2, p6, Lcom/google/protobuf/h$b;->long1:J

    invoke-static {p2, p3}, Lcom/google/protobuf/CodedInputStream;->decodeZigZag64(J)J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iput-object p2, p6, Lcom/google/protobuf/h$b;->object1:Ljava/lang/Object;

    goto/16 :goto_ae

    :pswitch_2b
    invoke-static {p1, p2, p6}, Lcom/google/protobuf/h;->decodeVarint32([BILcom/google/protobuf/h$b;)I

    move-result p1

    iget p2, p6, Lcom/google/protobuf/h$b;->int1:I

    invoke-static {p2}, Lcom/google/protobuf/CodedInputStream;->decodeZigZag32(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p6, Lcom/google/protobuf/h$b;->object1:Ljava/lang/Object;

    goto/16 :goto_ae

    :pswitch_3d
    invoke-static {}, Lcom/google/protobuf/Protobuf;->getInstance()Lcom/google/protobuf/Protobuf;

    move-result-object p4

    invoke-virtual {p4, p5}, Lcom/google/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/google/protobuf/l1;

    move-result-object p4

    invoke-static {p4, p1, p2, p3, p6}, Lcom/google/protobuf/h;->decodeMessageField(Lcom/google/protobuf/l1;[BIILcom/google/protobuf/h$b;)I

    move-result p1

    goto :goto_ae

    :pswitch_4a
    invoke-static {p1, p2, p6}, Lcom/google/protobuf/h;->decodeVarint64([BILcom/google/protobuf/h$b;)I

    move-result p1

    iget-wide p2, p6, Lcom/google/protobuf/h$b;->long1:J

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iput-object p2, p6, Lcom/google/protobuf/h$b;->object1:Ljava/lang/Object;

    goto :goto_ae

    :pswitch_57
    invoke-static {p1, p2, p6}, Lcom/google/protobuf/h;->decodeVarint32([BILcom/google/protobuf/h$b;)I

    move-result p1

    iget p2, p6, Lcom/google/protobuf/h$b;->int1:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p6, Lcom/google/protobuf/h$b;->object1:Ljava/lang/Object;

    goto :goto_ae

    :pswitch_64
    invoke-static {p1, p2}, Lcom/google/protobuf/h;->decodeFloat([BI)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p6, Lcom/google/protobuf/h$b;->object1:Ljava/lang/Object;

    goto :goto_84

    :pswitch_6f
    invoke-static {p1, p2}, Lcom/google/protobuf/h;->decodeFixed64([BI)J

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p6, Lcom/google/protobuf/h$b;->object1:Ljava/lang/Object;

    goto :goto_91

    :pswitch_7a
    invoke-static {p1, p2}, Lcom/google/protobuf/h;->decodeFixed32([BI)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p6, Lcom/google/protobuf/h$b;->object1:Ljava/lang/Object;

    :goto_84
    add-int/lit8 p1, p2, 0x4

    goto :goto_ae

    :pswitch_87
    invoke-static {p1, p2}, Lcom/google/protobuf/h;->decodeDouble([BI)D

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p6, Lcom/google/protobuf/h$b;->object1:Ljava/lang/Object;

    :goto_91
    add-int/lit8 p1, p2, 0x8

    goto :goto_ae

    :pswitch_94
    invoke-static {p1, p2, p6}, Lcom/google/protobuf/h;->decodeBytes([BILcom/google/protobuf/h$b;)I

    move-result p1

    goto :goto_ae

    :pswitch_99
    invoke-static {p1, p2, p6}, Lcom/google/protobuf/h;->decodeVarint64([BILcom/google/protobuf/h$b;)I

    move-result p1

    iget-wide p2, p6, Lcom/google/protobuf/h$b;->long1:J

    const-wide/16 p4, 0x0

    cmp-long v0, p2, p4

    if-eqz v0, :cond_a7

    const/4 p2, 0x1

    goto :goto_a8

    :cond_a7
    const/4 p2, 0x0

    :goto_a8
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p6, Lcom/google/protobuf/h$b;->object1:Ljava/lang/Object;

    :goto_ae
    return p1

    nop

    :pswitch_data_b0
    .packed-switch 0x1
        :pswitch_99
        :pswitch_94
        :pswitch_87
        :pswitch_7a
        :pswitch_7a
        :pswitch_6f
        :pswitch_6f
        :pswitch_64
        :pswitch_57
        :pswitch_57
        :pswitch_57
        :pswitch_4a
        :pswitch_4a
        :pswitch_3d
        :pswitch_2b
        :pswitch_19
        :pswitch_13
    .end packed-switch
.end method

.method private static doubleAt(Ljava/lang/Object;J)D
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)D"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/google/protobuf/b2;->getDouble(Ljava/lang/Object;J)D

    move-result-wide p0

    return-wide p0
.end method

.method private equals(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)Z"
        }
    .end annotation

    invoke-direct {p0, p3}, Lcom/google/protobuf/t0;->typeAndOffsetAt(I)I

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v1

    invoke-static {v0}, Lcom/google/protobuf/t0;->type(I)I

    move-result v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_1b2

    return v4

    :pswitch_12
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/t0;->isOneofCaseEqual(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_27

    invoke-static {p1, v1, v2}, Lcom/google/protobuf/b2;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/b2;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/google/protobuf/SchemaUtil;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_27

    const/4 v3, 0x1

    :cond_27
    return v3

    :pswitch_28
    invoke-static {p1, v1, v2}, Lcom/google/protobuf/b2;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/b2;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/google/protobuf/SchemaUtil;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :pswitch_35
    invoke-static {p1, v1, v2}, Lcom/google/protobuf/b2;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/b2;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/google/protobuf/SchemaUtil;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :pswitch_42
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/t0;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_57

    invoke-static {p1, v1, v2}, Lcom/google/protobuf/b2;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/b2;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/google/protobuf/SchemaUtil;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_57

    const/4 v3, 0x1

    :cond_57
    return v3

    :pswitch_58
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/t0;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_6b

    invoke-static {p1, v1, v2}, Lcom/google/protobuf/b2;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/b2;->getLong(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p3, v5, p1

    if-nez p3, :cond_6b

    const/4 v3, 0x1

    :cond_6b
    return v3

    :pswitch_6c
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/t0;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_7d

    invoke-static {p1, v1, v2}, Lcom/google/protobuf/b2;->getInt(Ljava/lang/Object;J)I

    move-result p1

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/b2;->getInt(Ljava/lang/Object;J)I

    move-result p2

    if-ne p1, p2, :cond_7d

    const/4 v3, 0x1

    :cond_7d
    return v3

    :pswitch_7e
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/t0;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_91

    invoke-static {p1, v1, v2}, Lcom/google/protobuf/b2;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/b2;->getLong(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p3, v5, p1

    if-nez p3, :cond_91

    const/4 v3, 0x1

    :cond_91
    return v3

    :pswitch_92
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/t0;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_a3

    invoke-static {p1, v1, v2}, Lcom/google/protobuf/b2;->getInt(Ljava/lang/Object;J)I

    move-result p1

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/b2;->getInt(Ljava/lang/Object;J)I

    move-result p2

    if-ne p1, p2, :cond_a3

    const/4 v3, 0x1

    :cond_a3
    return v3

    :pswitch_a4
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/t0;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_b5

    invoke-static {p1, v1, v2}, Lcom/google/protobuf/b2;->getInt(Ljava/lang/Object;J)I

    move-result p1

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/b2;->getInt(Ljava/lang/Object;J)I

    move-result p2

    if-ne p1, p2, :cond_b5

    const/4 v3, 0x1

    :cond_b5
    return v3

    :pswitch_b6
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/t0;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_c7

    invoke-static {p1, v1, v2}, Lcom/google/protobuf/b2;->getInt(Ljava/lang/Object;J)I

    move-result p1

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/b2;->getInt(Ljava/lang/Object;J)I

    move-result p2

    if-ne p1, p2, :cond_c7

    const/4 v3, 0x1

    :cond_c7
    return v3

    :pswitch_c8
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/t0;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_dd

    invoke-static {p1, v1, v2}, Lcom/google/protobuf/b2;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/b2;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/google/protobuf/SchemaUtil;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_dd

    const/4 v3, 0x1

    :cond_dd
    return v3

    :pswitch_de
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/t0;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_f3

    invoke-static {p1, v1, v2}, Lcom/google/protobuf/b2;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/b2;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/google/protobuf/SchemaUtil;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f3

    const/4 v3, 0x1

    :cond_f3
    return v3

    :pswitch_f4
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/t0;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_109

    invoke-static {p1, v1, v2}, Lcom/google/protobuf/b2;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/b2;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/google/protobuf/SchemaUtil;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_109

    const/4 v3, 0x1

    :cond_109
    return v3

    :pswitch_10a
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/t0;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_11b

    invoke-static {p1, v1, v2}, Lcom/google/protobuf/b2;->getBoolean(Ljava/lang/Object;J)Z

    move-result p1

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/b2;->getBoolean(Ljava/lang/Object;J)Z

    move-result p2

    if-ne p1, p2, :cond_11b

    const/4 v3, 0x1

    :cond_11b
    return v3

    :pswitch_11c
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/t0;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_12d

    invoke-static {p1, v1, v2}, Lcom/google/protobuf/b2;->getInt(Ljava/lang/Object;J)I

    move-result p1

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/b2;->getInt(Ljava/lang/Object;J)I

    move-result p2

    if-ne p1, p2, :cond_12d

    const/4 v3, 0x1

    :cond_12d
    return v3

    :pswitch_12e
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/t0;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_141

    invoke-static {p1, v1, v2}, Lcom/google/protobuf/b2;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/b2;->getLong(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p3, v5, p1

    if-nez p3, :cond_141

    const/4 v3, 0x1

    :cond_141
    return v3

    :pswitch_142
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/t0;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_153

    invoke-static {p1, v1, v2}, Lcom/google/protobuf/b2;->getInt(Ljava/lang/Object;J)I

    move-result p1

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/b2;->getInt(Ljava/lang/Object;J)I

    move-result p2

    if-ne p1, p2, :cond_153

    const/4 v3, 0x1

    :cond_153
    return v3

    :pswitch_154
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/t0;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_167

    invoke-static {p1, v1, v2}, Lcom/google/protobuf/b2;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/b2;->getLong(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p3, v5, p1

    if-nez p3, :cond_167

    const/4 v3, 0x1

    :cond_167
    return v3

    :pswitch_168
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/t0;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_17b

    invoke-static {p1, v1, v2}, Lcom/google/protobuf/b2;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/b2;->getLong(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p3, v5, p1

    if-nez p3, :cond_17b

    const/4 v3, 0x1

    :cond_17b
    return v3

    :pswitch_17c
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/t0;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_195

    invoke-static {p1, v1, v2}, Lcom/google/protobuf/b2;->getFloat(Ljava/lang/Object;J)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/b2;->getFloat(Ljava/lang/Object;J)F

    move-result p2

    invoke-static {p2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p2

    if-ne p1, p2, :cond_195

    const/4 v3, 0x1

    :cond_195
    return v3

    :pswitch_196
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/t0;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_1b1

    invoke-static {p1, v1, v2}, Lcom/google/protobuf/b2;->getDouble(Ljava/lang/Object;J)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/b2;->getDouble(Ljava/lang/Object;J)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p1

    cmp-long p3, v5, p1

    if-nez p3, :cond_1b1

    const/4 v3, 0x1

    :cond_1b1
    return v3

    :pswitch_data_1b2
    .packed-switch 0x0
        :pswitch_196
        :pswitch_17c
        :pswitch_168
        :pswitch_154
        :pswitch_142
        :pswitch_12e
        :pswitch_11c
        :pswitch_10a
        :pswitch_f4
        :pswitch_de
        :pswitch_c8
        :pswitch_b6
        :pswitch_a4
        :pswitch_92
        :pswitch_7e
        :pswitch_6c
        :pswitch_58
        :pswitch_42
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_28
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
    .end packed-switch
.end method

.method private filterMapUnknownEnumValues(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/protobuf/y1;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "ITUB;",
            "Lcom/google/protobuf/y1<",
            "TUT;TUB;>;",
            "Ljava/lang/Object;",
            ")TUB;"
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/google/protobuf/t0;->numberAt(I)I

    move-result v2

    invoke-direct {p0, p2}, Lcom/google/protobuf/t0;->typeAndOffsetAt(I)I

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/b2;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_13

    return-object p3

    :cond_13
    invoke-direct {p0, p2}, Lcom/google/protobuf/t0;->getEnumFieldVerifier(I)Lcom/google/protobuf/Internal$e;

    move-result-object v4

    if-nez v4, :cond_1a

    return-object p3

    :cond_1a
    iget-object v0, p0, Lcom/google/protobuf/t0;->mapFieldSchema:Lcom/google/protobuf/l0;

    invoke-interface {v0, p1}, Lcom/google/protobuf/l0;->forMutableMapData(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    move-object v0, p0

    move v1, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/google/protobuf/t0;->filterUnknownEnumMap(IILjava/util/Map;Lcom/google/protobuf/Internal$e;Ljava/lang/Object;Lcom/google/protobuf/y1;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private filterUnknownEnumMap(IILjava/util/Map;Lcom/google/protobuf/Internal$e;Ljava/lang/Object;Lcom/google/protobuf/y1;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lcom/google/protobuf/Internal$e;",
            "TUB;",
            "Lcom/google/protobuf/y1<",
            "TUT;TUB;>;",
            "Ljava/lang/Object;",
            ")TUB;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/t0;->mapFieldSchema:Lcom/google/protobuf/l0;

    invoke-direct {p0, p1}, Lcom/google/protobuf/t0;->getMapFieldDefaultEntry(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/protobuf/l0;->forMapMetadata(Ljava/lang/Object;)Lcom/google/protobuf/MapEntryLite$b;

    move-result-object p1

    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_12
    :goto_12
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_65

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p4, v1}, Lcom/google/protobuf/Internal$e;->isInRange(I)Z

    move-result v1

    if-nez v1, :cond_12

    if-nez p5, :cond_34

    invoke-virtual {p6, p7}, Lcom/google/protobuf/y1;->getBuilderFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    :cond_34
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/google/protobuf/MapEntryLite;->computeSerializedSize(Lcom/google/protobuf/MapEntryLite$b;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Lcom/google/protobuf/ByteString;->newCodedBuilder(I)Lcom/google/protobuf/ByteString$h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString$h;->getCodedOutput()Lcom/google/protobuf/CodedOutputStream;

    move-result-object v2

    :try_start_48
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, p1, v3, v0}, Lcom/google/protobuf/MapEntryLite;->writeTo(Lcom/google/protobuf/CodedOutputStream;Lcom/google/protobuf/MapEntryLite$b;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_53} :catch_5e

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString$h;->build()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p6, p5, p2, v0}, Lcom/google/protobuf/y1;->addLengthDelimited(Ljava/lang/Object;ILcom/google/protobuf/ByteString;)V

    invoke-interface {p3}, Ljava/util/Iterator;->remove()V

    goto :goto_12

    :catch_5e
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_65
    return-object p5
.end method

.method private static floatAt(Ljava/lang/Object;J)F
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)F"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/google/protobuf/b2;->getFloat(Ljava/lang/Object;J)F

    move-result p0

    return p0
.end method

.method private getEnumFieldVerifier(I)Lcom/google/protobuf/Internal$e;
    .registers 3

    iget-object v0, p0, Lcom/google/protobuf/t0;->objects:[Ljava/lang/Object;

    div-int/lit8 p1, p1, 0x3

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    check-cast p1, Lcom/google/protobuf/Internal$e;

    return-object p1
.end method

.method private getMapFieldDefaultEntry(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/google/protobuf/t0;->objects:[Ljava/lang/Object;

    div-int/lit8 p1, p1, 0x3

    mul-int/lit8 p1, p1, 0x2

    aget-object p1, v0, p1

    return-object p1
.end method

.method private getMessageFieldSchema(I)Lcom/google/protobuf/l1;
    .registers 5

    div-int/lit8 p1, p1, 0x3

    mul-int/lit8 p1, p1, 0x2

    iget-object v0, p0, Lcom/google/protobuf/t0;->objects:[Ljava/lang/Object;

    aget-object v0, v0, p1

    check-cast v0, Lcom/google/protobuf/l1;

    if-eqz v0, :cond_d

    return-object v0

    :cond_d
    invoke-static {}, Lcom/google/protobuf/Protobuf;->getInstance()Lcom/google/protobuf/Protobuf;

    move-result-object v0

    iget-object v1, p0, Lcom/google/protobuf/t0;->objects:[Ljava/lang/Object;

    add-int/lit8 v2, p1, 0x1

    aget-object v1, v1, v2

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/google/protobuf/l1;

    move-result-object v0

    iget-object v1, p0, Lcom/google/protobuf/t0;->objects:[Ljava/lang/Object;

    aput-object v0, v1, p1

    return-object v0
.end method

.method static getMutableUnknownFields(Ljava/lang/Object;)Lcom/google/protobuf/UnknownFieldSetLite;
    .registers 3

    check-cast p0, Lcom/google/protobuf/GeneratedMessageLite;

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-static {}, Lcom/google/protobuf/UnknownFieldSetLite;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSetLite;

    move-result-object v1

    if-ne v0, v1, :cond_10

    invoke-static {}, Lcom/google/protobuf/UnknownFieldSetLite;->newInstance()Lcom/google/protobuf/UnknownFieldSetLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    :cond_10
    return-object v0
.end method

.method private getSerializedSizeProto2(Ljava/lang/Object;)I
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v2, Lcom/google/protobuf/t0;->UNSAFE:Lsun/misc/Unsafe;

    const v3, 0xfffff

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v7, 0xfffff

    const/4 v8, 0x0

    :goto_f
    iget-object v9, v0, Lcom/google/protobuf/t0;->buffer:[I

    array-length v9, v9

    if-ge v5, v9, :cond_51e

    invoke-direct {v0, v5}, Lcom/google/protobuf/t0;->typeAndOffsetAt(I)I

    move-result v9

    invoke-direct {v0, v5}, Lcom/google/protobuf/t0;->numberAt(I)I

    move-result v10

    invoke-static {v9}, Lcom/google/protobuf/t0;->type(I)I

    move-result v11

    const/16 v12, 0x11

    const/4 v13, 0x1

    if-gt v11, v12, :cond_3a

    iget-object v12, v0, Lcom/google/protobuf/t0;->buffer:[I

    add-int/lit8 v14, v5, 0x2

    aget v12, v12, v14

    and-int v14, v12, v3

    ushr-int/lit8 v15, v12, 0x14

    shl-int v15, v13, v15

    if-eq v14, v7, :cond_58

    int-to-long v7, v14

    invoke-virtual {v2, v1, v7, v8}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v8

    move v7, v14

    goto :goto_58

    :cond_3a
    iget-boolean v12, v0, Lcom/google/protobuf/t0;->useCachedSizeField:Z

    if-eqz v12, :cond_56

    sget-object v12, Lcom/google/protobuf/FieldType;->DOUBLE_LIST_PACKED:Lcom/google/protobuf/FieldType;

    invoke-virtual {v12}, Lcom/google/protobuf/FieldType;->id()I

    move-result v12

    if-lt v11, v12, :cond_56

    sget-object v12, Lcom/google/protobuf/FieldType;->SINT64_LIST_PACKED:Lcom/google/protobuf/FieldType;

    invoke-virtual {v12}, Lcom/google/protobuf/FieldType;->id()I

    move-result v12

    if-gt v11, v12, :cond_56

    iget-object v12, v0, Lcom/google/protobuf/t0;->buffer:[I

    add-int/lit8 v14, v5, 0x2

    aget v12, v12, v14

    and-int/2addr v12, v3

    goto :goto_57

    :cond_56
    const/4 v12, 0x0

    :goto_57
    const/4 v15, 0x0

    :cond_58
    :goto_58
    invoke-static {v9}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v13

    const/4 v9, 0x0

    const-wide/16 v3, 0x0

    packed-switch v11, :pswitch_data_536

    goto/16 :goto_41e

    :pswitch_64
    invoke-direct {v0, v1, v10, v5}, Lcom/google/protobuf/t0;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_41e

    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/q0;

    invoke-direct {v0, v5}, Lcom/google/protobuf/t0;->getMessageFieldSchema(I)Lcom/google/protobuf/l1;

    move-result-object v4

    invoke-static {v10, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeGroupSize(ILcom/google/protobuf/q0;Lcom/google/protobuf/l1;)I

    move-result v3

    goto/16 :goto_41d

    :pswitch_7a
    invoke-direct {v0, v1, v10, v5}, Lcom/google/protobuf/t0;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_41e

    invoke-static {v1, v13, v14}, Lcom/google/protobuf/t0;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v10, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeSInt64Size(IJ)I

    move-result v3

    goto/16 :goto_41d

    :pswitch_8a
    invoke-direct {v0, v1, v10, v5}, Lcom/google/protobuf/t0;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_41e

    invoke-static {v1, v13, v14}, Lcom/google/protobuf/t0;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v10, v3}, Lcom/google/protobuf/CodedOutputStream;->computeSInt32Size(II)I

    move-result v3

    goto/16 :goto_41d

    :pswitch_9a
    invoke-direct {v0, v1, v10, v5}, Lcom/google/protobuf/t0;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_41e

    invoke-static {v10, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeSFixed64Size(IJ)I

    move-result v3

    goto/16 :goto_41d

    :pswitch_a6
    invoke-direct {v0, v1, v10, v5}, Lcom/google/protobuf/t0;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_41e

    const/4 v3, 0x0

    invoke-static {v10, v3}, Lcom/google/protobuf/CodedOutputStream;->computeSFixed32Size(II)I

    move-result v4

    goto/16 :goto_460

    :pswitch_b3
    invoke-direct {v0, v1, v10, v5}, Lcom/google/protobuf/t0;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_41e

    invoke-static {v1, v13, v14}, Lcom/google/protobuf/t0;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v10, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v3

    goto/16 :goto_41d

    :pswitch_c3
    invoke-direct {v0, v1, v10, v5}, Lcom/google/protobuf/t0;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_41e

    invoke-static {v1, v13, v14}, Lcom/google/protobuf/t0;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v10, v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v3

    goto/16 :goto_41d

    :pswitch_d3
    invoke-direct {v0, v1, v10, v5}, Lcom/google/protobuf/t0;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_41e

    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/ByteString;

    invoke-static {v10, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    goto/16 :goto_41d

    :pswitch_e5
    invoke-direct {v0, v1, v10, v5}, Lcom/google/protobuf/t0;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_41e

    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v0, v5}, Lcom/google/protobuf/t0;->getMessageFieldSchema(I)Lcom/google/protobuf/l1;

    move-result-object v4

    invoke-static {v10, v3, v4}, Lcom/google/protobuf/SchemaUtil;->computeSizeMessage(ILjava/lang/Object;Lcom/google/protobuf/l1;)I

    move-result v3

    goto/16 :goto_41d

    :pswitch_f9
    invoke-direct {v0, v1, v10, v5}, Lcom/google/protobuf/t0;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_41e

    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lcom/google/protobuf/ByteString;

    if-eqz v4, :cond_10f

    check-cast v3, Lcom/google/protobuf/ByteString;

    invoke-static {v10, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    goto/16 :goto_41d

    :cond_10f
    check-cast v3, Ljava/lang/String;

    invoke-static {v10, v3}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    goto/16 :goto_41d

    :pswitch_117
    invoke-direct {v0, v1, v10, v5}, Lcom/google/protobuf/t0;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_41e

    const/4 v3, 0x1

    invoke-static {v10, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v3

    goto/16 :goto_41d

    :pswitch_124
    invoke-direct {v0, v1, v10, v5}, Lcom/google/protobuf/t0;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_41e

    const/4 v3, 0x0

    invoke-static {v10, v3}, Lcom/google/protobuf/CodedOutputStream;->computeFixed32Size(II)I

    move-result v4

    goto/16 :goto_460

    :pswitch_131
    invoke-direct {v0, v1, v10, v5}, Lcom/google/protobuf/t0;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_41e

    invoke-static {v10, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeFixed64Size(IJ)I

    move-result v3

    goto/16 :goto_41d

    :pswitch_13d
    invoke-direct {v0, v1, v10, v5}, Lcom/google/protobuf/t0;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_41e

    invoke-static {v1, v13, v14}, Lcom/google/protobuf/t0;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v10, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    goto/16 :goto_41d

    :pswitch_14d
    invoke-direct {v0, v1, v10, v5}, Lcom/google/protobuf/t0;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_41e

    invoke-static {v1, v13, v14}, Lcom/google/protobuf/t0;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v10, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v3

    goto/16 :goto_41d

    :pswitch_15d
    invoke-direct {v0, v1, v10, v5}, Lcom/google/protobuf/t0;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_41e

    invoke-static {v1, v13, v14}, Lcom/google/protobuf/t0;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v10, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v3

    goto/16 :goto_41d

    :pswitch_16d
    invoke-direct {v0, v1, v10, v5}, Lcom/google/protobuf/t0;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_41e

    invoke-static {v10, v9}, Lcom/google/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v3

    goto/16 :goto_41d

    :pswitch_179
    invoke-direct {v0, v1, v10, v5}, Lcom/google/protobuf/t0;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_41e

    const-wide/16 v3, 0x0

    invoke-static {v10, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v3

    goto/16 :goto_41d

    :pswitch_187
    iget-object v3, v0, Lcom/google/protobuf/t0;->mapFieldSchema:Lcom/google/protobuf/l0;

    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v5}, Lcom/google/protobuf/t0;->getMapFieldDefaultEntry(I)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v3, v10, v4, v9}, Lcom/google/protobuf/l0;->getSerializedSize(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    goto/16 :goto_41d

    :pswitch_197
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-direct {v0, v5}, Lcom/google/protobuf/t0;->getMessageFieldSchema(I)Lcom/google/protobuf/l1;

    move-result-object v4

    invoke-static {v10, v3, v4}, Lcom/google/protobuf/SchemaUtil;->computeSizeGroupList(ILjava/util/List;Lcom/google/protobuf/l1;)I

    move-result v3

    goto/16 :goto_41d

    :pswitch_1a7
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/protobuf/SchemaUtil;->computeSizeSInt64ListNoTag(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_41e

    iget-boolean v4, v0, Lcom/google/protobuf/t0;->useCachedSizeField:Z

    if-eqz v4, :cond_1bb

    int-to-long v11, v12

    invoke-virtual {v2, v1, v11, v12, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_1bb
    invoke-static {v10}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v4

    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v9

    goto/16 :goto_346

    :pswitch_1c5
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/protobuf/SchemaUtil;->computeSizeSInt32ListNoTag(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_41e

    iget-boolean v4, v0, Lcom/google/protobuf/t0;->useCachedSizeField:Z

    if-eqz v4, :cond_1d9

    int-to-long v11, v12

    invoke-virtual {v2, v1, v11, v12, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_1d9
    invoke-static {v10}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v4

    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v9

    goto/16 :goto_346

    :pswitch_1e3
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/protobuf/SchemaUtil;->computeSizeFixed64ListNoTag(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_41e

    iget-boolean v4, v0, Lcom/google/protobuf/t0;->useCachedSizeField:Z

    if-eqz v4, :cond_1f7

    int-to-long v11, v12

    invoke-virtual {v2, v1, v11, v12, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_1f7
    invoke-static {v10}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v4

    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v9

    goto/16 :goto_346

    :pswitch_201
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/protobuf/SchemaUtil;->computeSizeFixed32ListNoTag(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_41e

    iget-boolean v4, v0, Lcom/google/protobuf/t0;->useCachedSizeField:Z

    if-eqz v4, :cond_215

    int-to-long v11, v12

    invoke-virtual {v2, v1, v11, v12, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_215
    invoke-static {v10}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v4

    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v9

    goto/16 :goto_346

    :pswitch_21f
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/protobuf/SchemaUtil;->computeSizeEnumListNoTag(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_41e

    iget-boolean v4, v0, Lcom/google/protobuf/t0;->useCachedSizeField:Z

    if-eqz v4, :cond_233

    int-to-long v11, v12

    invoke-virtual {v2, v1, v11, v12, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_233
    invoke-static {v10}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v4

    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v9

    goto/16 :goto_346

    :pswitch_23d
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/protobuf/SchemaUtil;->computeSizeUInt32ListNoTag(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_41e

    iget-boolean v4, v0, Lcom/google/protobuf/t0;->useCachedSizeField:Z

    if-eqz v4, :cond_251

    int-to-long v11, v12

    invoke-virtual {v2, v1, v11, v12, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_251
    invoke-static {v10}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v4

    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v9

    goto/16 :goto_346

    :pswitch_25b
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/protobuf/SchemaUtil;->computeSizeBoolListNoTag(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_41e

    iget-boolean v4, v0, Lcom/google/protobuf/t0;->useCachedSizeField:Z

    if-eqz v4, :cond_26f

    int-to-long v11, v12

    invoke-virtual {v2, v1, v11, v12, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_26f
    invoke-static {v10}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v4

    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v9

    goto/16 :goto_346

    :pswitch_279
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/protobuf/SchemaUtil;->computeSizeFixed32ListNoTag(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_41e

    iget-boolean v4, v0, Lcom/google/protobuf/t0;->useCachedSizeField:Z

    if-eqz v4, :cond_28d

    int-to-long v11, v12

    invoke-virtual {v2, v1, v11, v12, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_28d
    invoke-static {v10}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v4

    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v9

    goto/16 :goto_346

    :pswitch_297
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/protobuf/SchemaUtil;->computeSizeFixed64ListNoTag(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_41e

    iget-boolean v4, v0, Lcom/google/protobuf/t0;->useCachedSizeField:Z

    if-eqz v4, :cond_2ab

    int-to-long v11, v12

    invoke-virtual {v2, v1, v11, v12, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_2ab
    invoke-static {v10}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v4

    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v9

    goto/16 :goto_346

    :pswitch_2b5
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/protobuf/SchemaUtil;->computeSizeInt32ListNoTag(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_41e

    iget-boolean v4, v0, Lcom/google/protobuf/t0;->useCachedSizeField:Z

    if-eqz v4, :cond_2c9

    int-to-long v11, v12

    invoke-virtual {v2, v1, v11, v12, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_2c9
    invoke-static {v10}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v4

    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v9

    goto/16 :goto_346

    :pswitch_2d3
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/protobuf/SchemaUtil;->computeSizeUInt64ListNoTag(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_41e

    iget-boolean v4, v0, Lcom/google/protobuf/t0;->useCachedSizeField:Z

    if-eqz v4, :cond_2e7

    int-to-long v11, v12

    invoke-virtual {v2, v1, v11, v12, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_2e7
    invoke-static {v10}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v4

    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v9

    goto :goto_346

    :pswitch_2f0
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/protobuf/SchemaUtil;->computeSizeInt64ListNoTag(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_41e

    iget-boolean v4, v0, Lcom/google/protobuf/t0;->useCachedSizeField:Z

    if-eqz v4, :cond_304

    int-to-long v11, v12

    invoke-virtual {v2, v1, v11, v12, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_304
    invoke-static {v10}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v4

    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v9

    goto :goto_346

    :pswitch_30d
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/protobuf/SchemaUtil;->computeSizeFixed32ListNoTag(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_41e

    iget-boolean v4, v0, Lcom/google/protobuf/t0;->useCachedSizeField:Z

    if-eqz v4, :cond_321

    int-to-long v11, v12

    invoke-virtual {v2, v1, v11, v12, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_321
    invoke-static {v10}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v4

    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v9

    goto :goto_346

    :pswitch_32a
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/protobuf/SchemaUtil;->computeSizeFixed64ListNoTag(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_41e

    iget-boolean v4, v0, Lcom/google/protobuf/t0;->useCachedSizeField:Z

    if-eqz v4, :cond_33e

    int-to-long v11, v12

    invoke-virtual {v2, v1, v11, v12, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_33e
    invoke-static {v10}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v4

    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v9

    :goto_346
    add-int/2addr v4, v9

    add-int/2addr v4, v3

    goto/16 :goto_460

    :pswitch_34a
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    const/4 v4, 0x0

    invoke-static {v10, v3, v4}, Lcom/google/protobuf/SchemaUtil;->computeSizeSInt64List(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_41d

    :pswitch_357
    const/4 v4, 0x0

    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v10, v3, v4}, Lcom/google/protobuf/SchemaUtil;->computeSizeSInt32List(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_41d

    :pswitch_364
    const/4 v4, 0x0

    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v10, v3, v4}, Lcom/google/protobuf/SchemaUtil;->computeSizeFixed64List(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_41d

    :pswitch_371
    const/4 v4, 0x0

    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v10, v3, v4}, Lcom/google/protobuf/SchemaUtil;->computeSizeFixed32List(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_41d

    :pswitch_37e
    const/4 v4, 0x0

    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v10, v3, v4}, Lcom/google/protobuf/SchemaUtil;->computeSizeEnumList(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_41d

    :pswitch_38b
    const/4 v4, 0x0

    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v10, v3, v4}, Lcom/google/protobuf/SchemaUtil;->computeSizeUInt32List(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_41d

    :pswitch_398
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v10, v3}, Lcom/google/protobuf/SchemaUtil;->computeSizeByteStringList(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_41d

    :pswitch_3a4
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-direct {v0, v5}, Lcom/google/protobuf/t0;->getMessageFieldSchema(I)Lcom/google/protobuf/l1;

    move-result-object v4

    invoke-static {v10, v3, v4}, Lcom/google/protobuf/SchemaUtil;->computeSizeMessageList(ILjava/util/List;Lcom/google/protobuf/l1;)I

    move-result v3

    goto :goto_41d

    :pswitch_3b3
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v10, v3}, Lcom/google/protobuf/SchemaUtil;->computeSizeStringList(ILjava/util/List;)I

    move-result v3

    goto :goto_41d

    :pswitch_3be
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    const/4 v4, 0x0

    invoke-static {v10, v3, v4}, Lcom/google/protobuf/SchemaUtil;->computeSizeBoolList(ILjava/util/List;Z)I

    move-result v3

    goto :goto_41d

    :pswitch_3ca
    const/4 v4, 0x0

    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v10, v3, v4}, Lcom/google/protobuf/SchemaUtil;->computeSizeFixed32List(ILjava/util/List;Z)I

    move-result v3

    goto :goto_41d

    :pswitch_3d6
    const/4 v4, 0x0

    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v10, v3, v4}, Lcom/google/protobuf/SchemaUtil;->computeSizeFixed64List(ILjava/util/List;Z)I

    move-result v3

    goto :goto_41d

    :pswitch_3e2
    const/4 v4, 0x0

    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v10, v3, v4}, Lcom/google/protobuf/SchemaUtil;->computeSizeInt32List(ILjava/util/List;Z)I

    move-result v3

    goto :goto_41d

    :pswitch_3ee
    const/4 v4, 0x0

    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v10, v3, v4}, Lcom/google/protobuf/SchemaUtil;->computeSizeUInt64List(ILjava/util/List;Z)I

    move-result v3

    goto :goto_41d

    :pswitch_3fa
    const/4 v4, 0x0

    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v10, v3, v4}, Lcom/google/protobuf/SchemaUtil;->computeSizeInt64List(ILjava/util/List;Z)I

    move-result v3

    goto :goto_41d

    :pswitch_406
    const/4 v4, 0x0

    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v10, v3, v4}, Lcom/google/protobuf/SchemaUtil;->computeSizeFixed32List(ILjava/util/List;Z)I

    move-result v3

    goto :goto_41d

    :pswitch_412
    const/4 v4, 0x0

    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v10, v3, v4}, Lcom/google/protobuf/SchemaUtil;->computeSizeFixed64List(ILjava/util/List;Z)I

    move-result v3

    :goto_41d
    add-int/2addr v6, v3

    :cond_41e
    :goto_41e
    const/4 v11, 0x0

    goto/16 :goto_517

    :pswitch_421
    and-int v3, v8, v15

    if-eqz v3, :cond_41e

    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/q0;

    invoke-direct {v0, v5}, Lcom/google/protobuf/t0;->getMessageFieldSchema(I)Lcom/google/protobuf/l1;

    move-result-object v4

    invoke-static {v10, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeGroupSize(ILcom/google/protobuf/q0;Lcom/google/protobuf/l1;)I

    move-result v3

    goto :goto_41d

    :pswitch_434
    and-int v3, v8, v15

    if-eqz v3, :cond_41e

    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v10, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeSInt64Size(IJ)I

    move-result v3

    goto :goto_41d

    :pswitch_441
    and-int v3, v8, v15

    if-eqz v3, :cond_41e

    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v10, v3}, Lcom/google/protobuf/CodedOutputStream;->computeSInt32Size(II)I

    move-result v3

    goto :goto_41d

    :pswitch_44e
    and-int v9, v8, v15

    if-eqz v9, :cond_41e

    invoke-static {v10, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeSFixed64Size(IJ)I

    move-result v3

    goto :goto_41d

    :pswitch_457
    and-int v3, v8, v15

    if-eqz v3, :cond_41e

    const/4 v3, 0x0

    invoke-static {v10, v3}, Lcom/google/protobuf/CodedOutputStream;->computeSFixed32Size(II)I

    move-result v4

    :goto_460
    add-int/2addr v6, v4

    goto :goto_41e

    :pswitch_462
    and-int v3, v8, v15

    if-eqz v3, :cond_41e

    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v10, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v3

    goto :goto_41d

    :pswitch_46f
    and-int v3, v8, v15

    if-eqz v3, :cond_41e

    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v10, v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v3

    goto :goto_41d

    :pswitch_47c
    and-int v3, v8, v15

    if-eqz v3, :cond_41e

    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/ByteString;

    invoke-static {v10, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    goto :goto_41d

    :pswitch_48b
    and-int v3, v8, v15

    if-eqz v3, :cond_41e

    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v0, v5}, Lcom/google/protobuf/t0;->getMessageFieldSchema(I)Lcom/google/protobuf/l1;

    move-result-object v4

    invoke-static {v10, v3, v4}, Lcom/google/protobuf/SchemaUtil;->computeSizeMessage(ILjava/lang/Object;Lcom/google/protobuf/l1;)I

    move-result v3

    goto :goto_41d

    :pswitch_49c
    and-int v3, v8, v15

    if-eqz v3, :cond_41e

    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lcom/google/protobuf/ByteString;

    if-eqz v4, :cond_4b0

    check-cast v3, Lcom/google/protobuf/ByteString;

    invoke-static {v10, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    goto/16 :goto_41d

    :cond_4b0
    check-cast v3, Ljava/lang/String;

    invoke-static {v10, v3}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    goto/16 :goto_41d

    :pswitch_4b8
    and-int v3, v8, v15

    if-eqz v3, :cond_41e

    const/4 v3, 0x1

    invoke-static {v10, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v3

    goto/16 :goto_41d

    :pswitch_4c3
    and-int v3, v8, v15

    if-eqz v3, :cond_41e

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lcom/google/protobuf/CodedOutputStream;->computeFixed32Size(II)I

    move-result v3

    goto :goto_516

    :pswitch_4cd
    const/4 v11, 0x0

    and-int v9, v8, v15

    if-eqz v9, :cond_517

    invoke-static {v10, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeFixed64Size(IJ)I

    move-result v3

    goto :goto_516

    :pswitch_4d7
    const/4 v11, 0x0

    and-int v3, v8, v15

    if-eqz v3, :cond_517

    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v10, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    goto :goto_516

    :pswitch_4e5
    const/4 v11, 0x0

    and-int v3, v8, v15

    if-eqz v3, :cond_517

    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v10, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v3

    goto :goto_516

    :pswitch_4f3
    const/4 v11, 0x0

    and-int v3, v8, v15

    if-eqz v3, :cond_517

    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v10, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v3

    goto :goto_516

    :pswitch_501
    const/4 v11, 0x0

    and-int v3, v8, v15

    if-eqz v3, :cond_517

    invoke-static {v10, v9}, Lcom/google/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v3

    goto :goto_516

    :pswitch_50b
    const/4 v11, 0x0

    and-int v3, v8, v15

    if-eqz v3, :cond_517

    const-wide/16 v3, 0x0

    invoke-static {v10, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v3

    :goto_516
    add-int/2addr v6, v3

    :cond_517
    :goto_517
    add-int/lit8 v5, v5, 0x3

    const v3, 0xfffff

    goto/16 :goto_f

    :cond_51e
    iget-object v2, v0, Lcom/google/protobuf/t0;->unknownFieldSchema:Lcom/google/protobuf/y1;

    invoke-direct {v0, v2, v1}, Lcom/google/protobuf/t0;->getUnknownFieldsSerializedSize(Lcom/google/protobuf/y1;Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v6, v2

    iget-boolean v2, v0, Lcom/google/protobuf/t0;->hasExtensions:Z

    if-eqz v2, :cond_534

    iget-object v2, v0, Lcom/google/protobuf/t0;->extensionSchema:Lcom/google/protobuf/u;

    invoke-virtual {v2, v1}, Lcom/google/protobuf/u;->getExtensions(Ljava/lang/Object;)Lcom/google/protobuf/FieldSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/FieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v6, v1

    :cond_534
    return v6

    nop

    :pswitch_data_536
    .packed-switch 0x0
        :pswitch_50b
        :pswitch_501
        :pswitch_4f3
        :pswitch_4e5
        :pswitch_4d7
        :pswitch_4cd
        :pswitch_4c3
        :pswitch_4b8
        :pswitch_49c
        :pswitch_48b
        :pswitch_47c
        :pswitch_46f
        :pswitch_462
        :pswitch_457
        :pswitch_44e
        :pswitch_441
        :pswitch_434
        :pswitch_421
        :pswitch_412
        :pswitch_406
        :pswitch_3fa
        :pswitch_3ee
        :pswitch_3e2
        :pswitch_3d6
        :pswitch_3ca
        :pswitch_3be
        :pswitch_3b3
        :pswitch_3a4
        :pswitch_398
        :pswitch_38b
        :pswitch_37e
        :pswitch_371
        :pswitch_364
        :pswitch_357
        :pswitch_34a
        :pswitch_32a
        :pswitch_30d
        :pswitch_2f0
        :pswitch_2d3
        :pswitch_2b5
        :pswitch_297
        :pswitch_279
        :pswitch_25b
        :pswitch_23d
        :pswitch_21f
        :pswitch_201
        :pswitch_1e3
        :pswitch_1c5
        :pswitch_1a7
        :pswitch_197
        :pswitch_187
        :pswitch_179
        :pswitch_16d
        :pswitch_15d
        :pswitch_14d
        :pswitch_13d
        :pswitch_131
        :pswitch_124
        :pswitch_117
        :pswitch_f9
        :pswitch_e5
        :pswitch_d3
        :pswitch_c3
        :pswitch_b3
        :pswitch_a6
        :pswitch_9a
        :pswitch_8a
        :pswitch_7a
        :pswitch_64
    .end packed-switch
.end method

.method private getSerializedSizeProto3(Ljava/lang/Object;)I
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p1

    sget-object v2, Lcom/google/protobuf/t0;->UNSAFE:Lsun/misc/Unsafe;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_8
    iget-object v6, v0, Lcom/google/protobuf/t0;->buffer:[I

    array-length v6, v6

    if-ge v4, v6, :cond_4e3

    invoke-direct {p0, v4}, Lcom/google/protobuf/t0;->typeAndOffsetAt(I)I

    move-result v6

    invoke-static {v6}, Lcom/google/protobuf/t0;->type(I)I

    move-result v7

    invoke-direct {p0, v4}, Lcom/google/protobuf/t0;->numberAt(I)I

    move-result v8

    invoke-static {v6}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v9

    sget-object v6, Lcom/google/protobuf/FieldType;->DOUBLE_LIST_PACKED:Lcom/google/protobuf/FieldType;

    invoke-virtual {v6}, Lcom/google/protobuf/FieldType;->id()I

    move-result v6

    if-lt v7, v6, :cond_38

    sget-object v6, Lcom/google/protobuf/FieldType;->SINT64_LIST_PACKED:Lcom/google/protobuf/FieldType;

    invoke-virtual {v6}, Lcom/google/protobuf/FieldType;->id()I

    move-result v6

    if-gt v7, v6, :cond_38

    iget-object v6, v0, Lcom/google/protobuf/t0;->buffer:[I

    add-int/lit8 v11, v4, 0x2

    aget v6, v6, v11

    const v11, 0xfffff

    and-int/2addr v6, v11

    goto :goto_39

    :cond_38
    const/4 v6, 0x0

    :goto_39
    const/4 v11, 0x1

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    packed-switch v7, :pswitch_data_4ec

    goto/16 :goto_4df

    :pswitch_42
    invoke-direct {p0, v1, v8, v4}, Lcom/google/protobuf/t0;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_4df

    invoke-static {v1, v9, v10}, Lcom/google/protobuf/b2;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/protobuf/q0;

    invoke-direct {p0, v4}, Lcom/google/protobuf/t0;->getMessageFieldSchema(I)Lcom/google/protobuf/l1;

    move-result-object v7

    invoke-static {v8, v6, v7}, Lcom/google/protobuf/CodedOutputStream;->computeGroupSize(ILcom/google/protobuf/q0;Lcom/google/protobuf/l1;)I

    move-result v6

    goto/16 :goto_3c4

    :pswitch_58
    invoke-direct {p0, v1, v8, v4}, Lcom/google/protobuf/t0;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_4df

    invoke-static {v1, v9, v10}, Lcom/google/protobuf/t0;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {v8, v6, v7}, Lcom/google/protobuf/CodedOutputStream;->computeSInt64Size(IJ)I

    move-result v6

    goto/16 :goto_3c4

    :pswitch_68
    invoke-direct {p0, v1, v8, v4}, Lcom/google/protobuf/t0;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_4df

    invoke-static {v1, v9, v10}, Lcom/google/protobuf/t0;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v6

    invoke-static {v8, v6}, Lcom/google/protobuf/CodedOutputStream;->computeSInt32Size(II)I

    move-result v6

    goto/16 :goto_3c4

    :pswitch_78
    invoke-direct {p0, v1, v8, v4}, Lcom/google/protobuf/t0;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_4df

    invoke-static {v8, v13, v14}, Lcom/google/protobuf/CodedOutputStream;->computeSFixed64Size(IJ)I

    move-result v6

    goto/16 :goto_3c4

    :pswitch_84
    invoke-direct {p0, v1, v8, v4}, Lcom/google/protobuf/t0;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_4df

    invoke-static {v8, v3}, Lcom/google/protobuf/CodedOutputStream;->computeSFixed32Size(II)I

    move-result v6

    goto/16 :goto_3c4

    :pswitch_90
    invoke-direct {p0, v1, v8, v4}, Lcom/google/protobuf/t0;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_4df

    invoke-static {v1, v9, v10}, Lcom/google/protobuf/t0;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v6

    invoke-static {v8, v6}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v6

    goto/16 :goto_3c4

    :pswitch_a0
    invoke-direct {p0, v1, v8, v4}, Lcom/google/protobuf/t0;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_4df

    invoke-static {v1, v9, v10}, Lcom/google/protobuf/t0;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v6

    invoke-static {v8, v6}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v6

    goto/16 :goto_3c4

    :pswitch_b0
    invoke-direct {p0, v1, v8, v4}, Lcom/google/protobuf/t0;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_4df

    invoke-static {v1, v9, v10}, Lcom/google/protobuf/b2;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/protobuf/ByteString;

    invoke-static {v8, v6}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v6

    goto/16 :goto_3c4

    :pswitch_c2
    invoke-direct {p0, v1, v8, v4}, Lcom/google/protobuf/t0;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_4df

    invoke-static {v1, v9, v10}, Lcom/google/protobuf/b2;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {p0, v4}, Lcom/google/protobuf/t0;->getMessageFieldSchema(I)Lcom/google/protobuf/l1;

    move-result-object v7

    invoke-static {v8, v6, v7}, Lcom/google/protobuf/SchemaUtil;->computeSizeMessage(ILjava/lang/Object;Lcom/google/protobuf/l1;)I

    move-result v6

    goto/16 :goto_3c4

    :pswitch_d6
    invoke-direct {p0, v1, v8, v4}, Lcom/google/protobuf/t0;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_4df

    invoke-static {v1, v9, v10}, Lcom/google/protobuf/b2;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    instance-of v7, v6, Lcom/google/protobuf/ByteString;

    if-eqz v7, :cond_ec

    check-cast v6, Lcom/google/protobuf/ByteString;

    invoke-static {v8, v6}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v6

    goto/16 :goto_3c4

    :cond_ec
    check-cast v6, Ljava/lang/String;

    invoke-static {v8, v6}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v6

    goto/16 :goto_3c4

    :pswitch_f4
    invoke-direct {p0, v1, v8, v4}, Lcom/google/protobuf/t0;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_4df

    invoke-static {v8, v11}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v6

    goto/16 :goto_3c4

    :pswitch_100
    invoke-direct {p0, v1, v8, v4}, Lcom/google/protobuf/t0;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_4df

    invoke-static {v8, v3}, Lcom/google/protobuf/CodedOutputStream;->computeFixed32Size(II)I

    move-result v6

    goto/16 :goto_3c4

    :pswitch_10c
    invoke-direct {p0, v1, v8, v4}, Lcom/google/protobuf/t0;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_4df

    invoke-static {v8, v13, v14}, Lcom/google/protobuf/CodedOutputStream;->computeFixed64Size(IJ)I

    move-result v6

    goto/16 :goto_3c4

    :pswitch_118
    invoke-direct {p0, v1, v8, v4}, Lcom/google/protobuf/t0;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_4df

    invoke-static {v1, v9, v10}, Lcom/google/protobuf/t0;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v6

    invoke-static {v8, v6}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v6

    goto/16 :goto_3c4

    :pswitch_128
    invoke-direct {p0, v1, v8, v4}, Lcom/google/protobuf/t0;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_4df

    invoke-static {v1, v9, v10}, Lcom/google/protobuf/t0;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {v8, v6, v7}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v6

    goto/16 :goto_3c4

    :pswitch_138
    invoke-direct {p0, v1, v8, v4}, Lcom/google/protobuf/t0;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_4df

    invoke-static {v1, v9, v10}, Lcom/google/protobuf/t0;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {v8, v6, v7}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v6

    goto/16 :goto_3c4

    :pswitch_148
    invoke-direct {p0, v1, v8, v4}, Lcom/google/protobuf/t0;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_4df

    invoke-static {v8, v12}, Lcom/google/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v6

    goto/16 :goto_3c4

    :pswitch_154
    invoke-direct {p0, v1, v8, v4}, Lcom/google/protobuf/t0;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_4df

    const-wide/16 v6, 0x0

    invoke-static {v8, v6, v7}, Lcom/google/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v6

    goto/16 :goto_3c4

    :pswitch_162
    iget-object v6, v0, Lcom/google/protobuf/t0;->mapFieldSchema:Lcom/google/protobuf/l0;

    invoke-static {v1, v9, v10}, Lcom/google/protobuf/b2;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    invoke-direct {p0, v4}, Lcom/google/protobuf/t0;->getMapFieldDefaultEntry(I)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v6, v8, v7, v9}, Lcom/google/protobuf/l0;->getSerializedSize(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    goto/16 :goto_3c4

    :pswitch_172
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/t0;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v6

    invoke-direct {p0, v4}, Lcom/google/protobuf/t0;->getMessageFieldSchema(I)Lcom/google/protobuf/l1;

    move-result-object v7

    invoke-static {v8, v6, v7}, Lcom/google/protobuf/SchemaUtil;->computeSizeGroupList(ILjava/util/List;Lcom/google/protobuf/l1;)I

    move-result v6

    goto/16 :goto_3c4

    :pswitch_180
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v7}, Lcom/google/protobuf/SchemaUtil;->computeSizeSInt64ListNoTag(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4df

    iget-boolean v9, v0, Lcom/google/protobuf/t0;->useCachedSizeField:Z

    if-eqz v9, :cond_194

    int-to-long v9, v6

    invoke-virtual {v2, v1, v9, v10, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_194
    invoke-static {v8}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v6

    invoke-static {v7}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v8

    goto/16 :goto_31f

    :pswitch_19e
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v7}, Lcom/google/protobuf/SchemaUtil;->computeSizeSInt32ListNoTag(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4df

    iget-boolean v9, v0, Lcom/google/protobuf/t0;->useCachedSizeField:Z

    if-eqz v9, :cond_1b2

    int-to-long v9, v6

    invoke-virtual {v2, v1, v9, v10, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_1b2
    invoke-static {v8}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v6

    invoke-static {v7}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v8

    goto/16 :goto_31f

    :pswitch_1bc
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v7}, Lcom/google/protobuf/SchemaUtil;->computeSizeFixed64ListNoTag(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4df

    iget-boolean v9, v0, Lcom/google/protobuf/t0;->useCachedSizeField:Z

    if-eqz v9, :cond_1d0

    int-to-long v9, v6

    invoke-virtual {v2, v1, v9, v10, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_1d0
    invoke-static {v8}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v6

    invoke-static {v7}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v8

    goto/16 :goto_31f

    :pswitch_1da
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v7}, Lcom/google/protobuf/SchemaUtil;->computeSizeFixed32ListNoTag(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4df

    iget-boolean v9, v0, Lcom/google/protobuf/t0;->useCachedSizeField:Z

    if-eqz v9, :cond_1ee

    int-to-long v9, v6

    invoke-virtual {v2, v1, v9, v10, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_1ee
    invoke-static {v8}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v6

    invoke-static {v7}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v8

    goto/16 :goto_31f

    :pswitch_1f8
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v7}, Lcom/google/protobuf/SchemaUtil;->computeSizeEnumListNoTag(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4df

    iget-boolean v9, v0, Lcom/google/protobuf/t0;->useCachedSizeField:Z

    if-eqz v9, :cond_20c

    int-to-long v9, v6

    invoke-virtual {v2, v1, v9, v10, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_20c
    invoke-static {v8}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v6

    invoke-static {v7}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v8

    goto/16 :goto_31f

    :pswitch_216
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v7}, Lcom/google/protobuf/SchemaUtil;->computeSizeUInt32ListNoTag(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4df

    iget-boolean v9, v0, Lcom/google/protobuf/t0;->useCachedSizeField:Z

    if-eqz v9, :cond_22a

    int-to-long v9, v6

    invoke-virtual {v2, v1, v9, v10, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_22a
    invoke-static {v8}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v6

    invoke-static {v7}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v8

    goto/16 :goto_31f

    :pswitch_234
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v7}, Lcom/google/protobuf/SchemaUtil;->computeSizeBoolListNoTag(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4df

    iget-boolean v9, v0, Lcom/google/protobuf/t0;->useCachedSizeField:Z

    if-eqz v9, :cond_248

    int-to-long v9, v6

    invoke-virtual {v2, v1, v9, v10, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_248
    invoke-static {v8}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v6

    invoke-static {v7}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v8

    goto/16 :goto_31f

    :pswitch_252
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v7}, Lcom/google/protobuf/SchemaUtil;->computeSizeFixed32ListNoTag(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4df

    iget-boolean v9, v0, Lcom/google/protobuf/t0;->useCachedSizeField:Z

    if-eqz v9, :cond_266

    int-to-long v9, v6

    invoke-virtual {v2, v1, v9, v10, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_266
    invoke-static {v8}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v6

    invoke-static {v7}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v8

    goto/16 :goto_31f

    :pswitch_270
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v7}, Lcom/google/protobuf/SchemaUtil;->computeSizeFixed64ListNoTag(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4df

    iget-boolean v9, v0, Lcom/google/protobuf/t0;->useCachedSizeField:Z

    if-eqz v9, :cond_284

    int-to-long v9, v6

    invoke-virtual {v2, v1, v9, v10, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_284
    invoke-static {v8}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v6

    invoke-static {v7}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v8

    goto/16 :goto_31f

    :pswitch_28e
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v7}, Lcom/google/protobuf/SchemaUtil;->computeSizeInt32ListNoTag(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4df

    iget-boolean v9, v0, Lcom/google/protobuf/t0;->useCachedSizeField:Z

    if-eqz v9, :cond_2a2

    int-to-long v9, v6

    invoke-virtual {v2, v1, v9, v10, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_2a2
    invoke-static {v8}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v6

    invoke-static {v7}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v8

    goto/16 :goto_31f

    :pswitch_2ac
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v7}, Lcom/google/protobuf/SchemaUtil;->computeSizeUInt64ListNoTag(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4df

    iget-boolean v9, v0, Lcom/google/protobuf/t0;->useCachedSizeField:Z

    if-eqz v9, :cond_2c0

    int-to-long v9, v6

    invoke-virtual {v2, v1, v9, v10, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_2c0
    invoke-static {v8}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v6

    invoke-static {v7}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v8

    goto :goto_31f

    :pswitch_2c9
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v7}, Lcom/google/protobuf/SchemaUtil;->computeSizeInt64ListNoTag(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4df

    iget-boolean v9, v0, Lcom/google/protobuf/t0;->useCachedSizeField:Z

    if-eqz v9, :cond_2dd

    int-to-long v9, v6

    invoke-virtual {v2, v1, v9, v10, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_2dd
    invoke-static {v8}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v6

    invoke-static {v7}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v8

    goto :goto_31f

    :pswitch_2e6
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v7}, Lcom/google/protobuf/SchemaUtil;->computeSizeFixed32ListNoTag(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4df

    iget-boolean v9, v0, Lcom/google/protobuf/t0;->useCachedSizeField:Z

    if-eqz v9, :cond_2fa

    int-to-long v9, v6

    invoke-virtual {v2, v1, v9, v10, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_2fa
    invoke-static {v8}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v6

    invoke-static {v7}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v8

    goto :goto_31f

    :pswitch_303
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v7}, Lcom/google/protobuf/SchemaUtil;->computeSizeFixed64ListNoTag(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4df

    iget-boolean v9, v0, Lcom/google/protobuf/t0;->useCachedSizeField:Z

    if-eqz v9, :cond_317

    int-to-long v9, v6

    invoke-virtual {v2, v1, v9, v10, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_317
    invoke-static {v8}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v6

    invoke-static {v7}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v8

    :goto_31f
    add-int/2addr v6, v8

    add-int/2addr v6, v7

    goto/16 :goto_3c4

    :pswitch_323
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/t0;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v6

    invoke-static {v8, v6, v3}, Lcom/google/protobuf/SchemaUtil;->computeSizeSInt64List(ILjava/util/List;Z)I

    move-result v6

    goto/16 :goto_3c4

    :pswitch_32d
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/t0;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v6

    invoke-static {v8, v6, v3}, Lcom/google/protobuf/SchemaUtil;->computeSizeSInt32List(ILjava/util/List;Z)I

    move-result v6

    goto/16 :goto_3c4

    :pswitch_337
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/t0;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v6

    invoke-static {v8, v6, v3}, Lcom/google/protobuf/SchemaUtil;->computeSizeFixed64List(ILjava/util/List;Z)I

    move-result v6

    goto/16 :goto_3c4

    :pswitch_341
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/t0;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v6

    invoke-static {v8, v6, v3}, Lcom/google/protobuf/SchemaUtil;->computeSizeFixed32List(ILjava/util/List;Z)I

    move-result v6

    goto/16 :goto_3c4

    :pswitch_34b
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/t0;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v6

    invoke-static {v8, v6, v3}, Lcom/google/protobuf/SchemaUtil;->computeSizeEnumList(ILjava/util/List;Z)I

    move-result v6

    goto/16 :goto_3c4

    :pswitch_355
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/t0;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v6

    invoke-static {v8, v6, v3}, Lcom/google/protobuf/SchemaUtil;->computeSizeUInt32List(ILjava/util/List;Z)I

    move-result v6

    goto :goto_3c4

    :pswitch_35e
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/t0;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v6

    invoke-static {v8, v6}, Lcom/google/protobuf/SchemaUtil;->computeSizeByteStringList(ILjava/util/List;)I

    move-result v6

    goto :goto_3c4

    :pswitch_367
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/t0;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v6

    invoke-direct {p0, v4}, Lcom/google/protobuf/t0;->getMessageFieldSchema(I)Lcom/google/protobuf/l1;

    move-result-object v7

    invoke-static {v8, v6, v7}, Lcom/google/protobuf/SchemaUtil;->computeSizeMessageList(ILjava/util/List;Lcom/google/protobuf/l1;)I

    move-result v6

    goto :goto_3c4

    :pswitch_374
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/t0;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v6

    invoke-static {v8, v6}, Lcom/google/protobuf/SchemaUtil;->computeSizeStringList(ILjava/util/List;)I

    move-result v6

    goto :goto_3c4

    :pswitch_37d
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/t0;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v6

    invoke-static {v8, v6, v3}, Lcom/google/protobuf/SchemaUtil;->computeSizeBoolList(ILjava/util/List;Z)I

    move-result v6

    goto :goto_3c4

    :pswitch_386
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/t0;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v6

    invoke-static {v8, v6, v3}, Lcom/google/protobuf/SchemaUtil;->computeSizeFixed32List(ILjava/util/List;Z)I

    move-result v6

    goto :goto_3c4

    :pswitch_38f
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/t0;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v6

    invoke-static {v8, v6, v3}, Lcom/google/protobuf/SchemaUtil;->computeSizeFixed64List(ILjava/util/List;Z)I

    move-result v6

    goto :goto_3c4

    :pswitch_398
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/t0;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v6

    invoke-static {v8, v6, v3}, Lcom/google/protobuf/SchemaUtil;->computeSizeInt32List(ILjava/util/List;Z)I

    move-result v6

    goto :goto_3c4

    :pswitch_3a1
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/t0;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v6

    invoke-static {v8, v6, v3}, Lcom/google/protobuf/SchemaUtil;->computeSizeUInt64List(ILjava/util/List;Z)I

    move-result v6

    goto :goto_3c4

    :pswitch_3aa
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/t0;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v6

    invoke-static {v8, v6, v3}, Lcom/google/protobuf/SchemaUtil;->computeSizeInt64List(ILjava/util/List;Z)I

    move-result v6

    goto :goto_3c4

    :pswitch_3b3
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/t0;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v6

    invoke-static {v8, v6, v3}, Lcom/google/protobuf/SchemaUtil;->computeSizeFixed32List(ILjava/util/List;Z)I

    move-result v6

    goto :goto_3c4

    :pswitch_3bc
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/t0;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v6

    invoke-static {v8, v6, v3}, Lcom/google/protobuf/SchemaUtil;->computeSizeFixed64List(ILjava/util/List;Z)I

    move-result v6

    :goto_3c4
    add-int/2addr v5, v6

    goto/16 :goto_4df

    :pswitch_3c7
    invoke-direct {p0, v1, v4}, Lcom/google/protobuf/t0;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_4df

    invoke-static {v1, v9, v10}, Lcom/google/protobuf/b2;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/protobuf/q0;

    invoke-direct {p0, v4}, Lcom/google/protobuf/t0;->getMessageFieldSchema(I)Lcom/google/protobuf/l1;

    move-result-object v7

    invoke-static {v8, v6, v7}, Lcom/google/protobuf/CodedOutputStream;->computeGroupSize(ILcom/google/protobuf/q0;Lcom/google/protobuf/l1;)I

    move-result v6

    goto :goto_3c4

    :pswitch_3dc
    invoke-direct {p0, v1, v4}, Lcom/google/protobuf/t0;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_4df

    invoke-static {v1, v9, v10}, Lcom/google/protobuf/b2;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {v8, v6, v7}, Lcom/google/protobuf/CodedOutputStream;->computeSInt64Size(IJ)I

    move-result v6

    goto :goto_3c4

    :pswitch_3eb
    invoke-direct {p0, v1, v4}, Lcom/google/protobuf/t0;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_4df

    invoke-static {v1, v9, v10}, Lcom/google/protobuf/b2;->getInt(Ljava/lang/Object;J)I

    move-result v6

    invoke-static {v8, v6}, Lcom/google/protobuf/CodedOutputStream;->computeSInt32Size(II)I

    move-result v6

    goto :goto_3c4

    :pswitch_3fa
    invoke-direct {p0, v1, v4}, Lcom/google/protobuf/t0;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_4df

    invoke-static {v8, v13, v14}, Lcom/google/protobuf/CodedOutputStream;->computeSFixed64Size(IJ)I

    move-result v6

    goto :goto_3c4

    :pswitch_405
    invoke-direct {p0, v1, v4}, Lcom/google/protobuf/t0;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_4df

    invoke-static {v8, v3}, Lcom/google/protobuf/CodedOutputStream;->computeSFixed32Size(II)I

    move-result v6

    goto :goto_3c4

    :pswitch_410
    invoke-direct {p0, v1, v4}, Lcom/google/protobuf/t0;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_4df

    invoke-static {v1, v9, v10}, Lcom/google/protobuf/b2;->getInt(Ljava/lang/Object;J)I

    move-result v6

    invoke-static {v8, v6}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v6

    goto :goto_3c4

    :pswitch_41f
    invoke-direct {p0, v1, v4}, Lcom/google/protobuf/t0;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_4df

    invoke-static {v1, v9, v10}, Lcom/google/protobuf/b2;->getInt(Ljava/lang/Object;J)I

    move-result v6

    invoke-static {v8, v6}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v6

    goto :goto_3c4

    :pswitch_42e
    invoke-direct {p0, v1, v4}, Lcom/google/protobuf/t0;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_4df

    invoke-static {v1, v9, v10}, Lcom/google/protobuf/b2;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/protobuf/ByteString;

    invoke-static {v8, v6}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v6

    goto :goto_3c4

    :pswitch_43f
    invoke-direct {p0, v1, v4}, Lcom/google/protobuf/t0;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_4df

    invoke-static {v1, v9, v10}, Lcom/google/protobuf/b2;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {p0, v4}, Lcom/google/protobuf/t0;->getMessageFieldSchema(I)Lcom/google/protobuf/l1;

    move-result-object v7

    invoke-static {v8, v6, v7}, Lcom/google/protobuf/SchemaUtil;->computeSizeMessage(ILjava/lang/Object;Lcom/google/protobuf/l1;)I

    move-result v6

    goto/16 :goto_3c4

    :pswitch_453
    invoke-direct {p0, v1, v4}, Lcom/google/protobuf/t0;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_4df

    invoke-static {v1, v9, v10}, Lcom/google/protobuf/b2;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    instance-of v7, v6, Lcom/google/protobuf/ByteString;

    if-eqz v7, :cond_469

    check-cast v6, Lcom/google/protobuf/ByteString;

    invoke-static {v8, v6}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v6

    goto/16 :goto_3c4

    :cond_469
    check-cast v6, Ljava/lang/String;

    invoke-static {v8, v6}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v6

    goto/16 :goto_3c4

    :pswitch_471
    invoke-direct {p0, v1, v4}, Lcom/google/protobuf/t0;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_4df

    invoke-static {v8, v11}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v6

    goto/16 :goto_3c4

    :pswitch_47d
    invoke-direct {p0, v1, v4}, Lcom/google/protobuf/t0;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_4df

    invoke-static {v8, v3}, Lcom/google/protobuf/CodedOutputStream;->computeFixed32Size(II)I

    move-result v6

    goto/16 :goto_3c4

    :pswitch_489
    invoke-direct {p0, v1, v4}, Lcom/google/protobuf/t0;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_4df

    invoke-static {v8, v13, v14}, Lcom/google/protobuf/CodedOutputStream;->computeFixed64Size(IJ)I

    move-result v6

    goto/16 :goto_3c4

    :pswitch_495
    invoke-direct {p0, v1, v4}, Lcom/google/protobuf/t0;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_4df

    invoke-static {v1, v9, v10}, Lcom/google/protobuf/b2;->getInt(Ljava/lang/Object;J)I

    move-result v6

    invoke-static {v8, v6}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v6

    goto/16 :goto_3c4

    :pswitch_4a5
    invoke-direct {p0, v1, v4}, Lcom/google/protobuf/t0;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_4df

    invoke-static {v1, v9, v10}, Lcom/google/protobuf/b2;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {v8, v6, v7}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v6

    goto/16 :goto_3c4

    :pswitch_4b5
    invoke-direct {p0, v1, v4}, Lcom/google/protobuf/t0;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_4df

    invoke-static {v1, v9, v10}, Lcom/google/protobuf/b2;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {v8, v6, v7}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v6

    goto/16 :goto_3c4

    :pswitch_4c5
    invoke-direct {p0, v1, v4}, Lcom/google/protobuf/t0;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_4df

    invoke-static {v8, v12}, Lcom/google/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v6

    goto/16 :goto_3c4

    :pswitch_4d1
    invoke-direct {p0, v1, v4}, Lcom/google/protobuf/t0;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_4df

    const-wide/16 v6, 0x0

    invoke-static {v8, v6, v7}, Lcom/google/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v6

    goto/16 :goto_3c4

    :cond_4df
    :goto_4df
    add-int/lit8 v4, v4, 0x3

    goto/16 :goto_8

    :cond_4e3
    iget-object v2, v0, Lcom/google/protobuf/t0;->unknownFieldSchema:Lcom/google/protobuf/y1;

    invoke-direct {p0, v2, v1}, Lcom/google/protobuf/t0;->getUnknownFieldsSerializedSize(Lcom/google/protobuf/y1;Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v5, v1

    return v5

    nop

    :pswitch_data_4ec
    .packed-switch 0x0
        :pswitch_4d1
        :pswitch_4c5
        :pswitch_4b5
        :pswitch_4a5
        :pswitch_495
        :pswitch_489
        :pswitch_47d
        :pswitch_471
        :pswitch_453
        :pswitch_43f
        :pswitch_42e
        :pswitch_41f
        :pswitch_410
        :pswitch_405
        :pswitch_3fa
        :pswitch_3eb
        :pswitch_3dc
        :pswitch_3c7
        :pswitch_3bc
        :pswitch_3b3
        :pswitch_3aa
        :pswitch_3a1
        :pswitch_398
        :pswitch_38f
        :pswitch_386
        :pswitch_37d
        :pswitch_374
        :pswitch_367
        :pswitch_35e
        :pswitch_355
        :pswitch_34b
        :pswitch_341
        :pswitch_337
        :pswitch_32d
        :pswitch_323
        :pswitch_303
        :pswitch_2e6
        :pswitch_2c9
        :pswitch_2ac
        :pswitch_28e
        :pswitch_270
        :pswitch_252
        :pswitch_234
        :pswitch_216
        :pswitch_1f8
        :pswitch_1da
        :pswitch_1bc
        :pswitch_19e
        :pswitch_180
        :pswitch_172
        :pswitch_162
        :pswitch_154
        :pswitch_148
        :pswitch_138
        :pswitch_128
        :pswitch_118
        :pswitch_10c
        :pswitch_100
        :pswitch_f4
        :pswitch_d6
        :pswitch_c2
        :pswitch_b0
        :pswitch_a0
        :pswitch_90
        :pswitch_84
        :pswitch_78
        :pswitch_68
        :pswitch_58
        :pswitch_42
    .end packed-switch
.end method

.method private getUnknownFieldsSerializedSize(Lcom/google/protobuf/y1;Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/y1<",
            "TUT;TUB;>;TT;)I"
        }
    .end annotation

    invoke-virtual {p1, p2}, Lcom/google/protobuf/y1;->getFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/protobuf/y1;->getSerializedSize(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method private static intAt(Ljava/lang/Object;J)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)I"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/google/protobuf/b2;->getInt(Ljava/lang/Object;J)I

    move-result p0

    return p0
.end method

.method private static isEnforceUtf8(I)Z
    .registers 2

    const/high16 v0, 0x20000000

    and-int/2addr p0, v0

    if-eqz p0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method private isFieldPresent(Ljava/lang/Object;I)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)Z"
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/google/protobuf/t0;->presenceMaskAndOffsetAt(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v1, v0

    int-to-long v1, v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-wide/32 v5, 0xfffff

    cmp-long v7, v1, v5

    if-nez v7, :cond_e8

    invoke-direct {p0, p2}, Lcom/google/protobuf/t0;->typeAndOffsetAt(I)I

    move-result p2

    invoke-static {p2}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v0

    invoke-static {p2}, Lcom/google/protobuf/t0;->type(I)I

    move-result p2

    const-wide/16 v5, 0x0

    packed-switch p2, :pswitch_data_f6

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :pswitch_29
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/b2;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_30

    const/4 v3, 0x1

    :cond_30
    return v3

    :pswitch_31
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/b2;->getLong(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v5

    if-eqz v0, :cond_3a

    const/4 v3, 0x1

    :cond_3a
    return v3

    :pswitch_3b
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/b2;->getInt(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_42

    const/4 v3, 0x1

    :cond_42
    return v3

    :pswitch_43
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/b2;->getLong(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v5

    if-eqz v0, :cond_4c

    const/4 v3, 0x1

    :cond_4c
    return v3

    :pswitch_4d
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/b2;->getInt(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_54

    const/4 v3, 0x1

    :cond_54
    return v3

    :pswitch_55
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/b2;->getInt(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_5c

    const/4 v3, 0x1

    :cond_5c
    return v3

    :pswitch_5d
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/b2;->getInt(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_64

    const/4 v3, 0x1

    :cond_64
    return v3

    :pswitch_65
    sget-object p2, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/b2;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v4

    return p1

    :pswitch_71
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/b2;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_78

    const/4 v3, 0x1

    :cond_78
    return v3

    :pswitch_79
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/b2;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_89

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v4

    return p1

    :cond_89
    instance-of p2, p1, Lcom/google/protobuf/ByteString;

    if-eqz p2, :cond_95

    sget-object p2, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    invoke-virtual {p2, p1}, Lcom/google/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v4

    return p1

    :cond_95
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :pswitch_9b
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/b2;->getBoolean(Ljava/lang/Object;J)Z

    move-result p1

    return p1

    :pswitch_a0
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/b2;->getInt(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_a7

    const/4 v3, 0x1

    :cond_a7
    return v3

    :pswitch_a8
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/b2;->getLong(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v5

    if-eqz v0, :cond_b1

    const/4 v3, 0x1

    :cond_b1
    return v3

    :pswitch_b2
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/b2;->getInt(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_b9

    const/4 v3, 0x1

    :cond_b9
    return v3

    :pswitch_ba
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/b2;->getLong(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v5

    if-eqz v0, :cond_c3

    const/4 v3, 0x1

    :cond_c3
    return v3

    :pswitch_c4
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/b2;->getLong(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v5

    if-eqz v0, :cond_cd

    const/4 v3, 0x1

    :cond_cd
    return v3

    :pswitch_ce
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/b2;->getFloat(Ljava/lang/Object;J)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    if-eqz p1, :cond_d9

    const/4 v3, 0x1

    :cond_d9
    return v3

    :pswitch_da
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/b2;->getDouble(Ljava/lang/Object;J)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p1

    cmp-long v0, p1, v5

    if-eqz v0, :cond_e7

    const/4 v3, 0x1

    :cond_e7
    return v3

    :cond_e8
    ushr-int/lit8 p2, v0, 0x14

    shl-int p2, v4, p2

    invoke-static {p1, v1, v2}, Lcom/google/protobuf/b2;->getInt(Ljava/lang/Object;J)I

    move-result p1

    and-int/2addr p1, p2

    if-eqz p1, :cond_f4

    const/4 v3, 0x1

    :cond_f4
    return v3

    nop

    :pswitch_data_f6
    .packed-switch 0x0
        :pswitch_da
        :pswitch_ce
        :pswitch_c4
        :pswitch_ba
        :pswitch_b2
        :pswitch_a8
        :pswitch_a0
        :pswitch_9b
        :pswitch_79
        :pswitch_71
        :pswitch_65
        :pswitch_5d
        :pswitch_55
        :pswitch_4d
        :pswitch_43
        :pswitch_3b
        :pswitch_31
        :pswitch_29
    .end packed-switch
.end method

.method private isFieldPresent(Ljava/lang/Object;IIII)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;IIII)Z"
        }
    .end annotation

    const v0, 0xfffff

    if-ne p3, v0, :cond_a

    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/t0;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result p1

    return p1

    :cond_a
    and-int p1, p4, p5

    if-eqz p1, :cond_10

    const/4 p1, 0x1

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    return p1
.end method

.method private static isInitialized(Ljava/lang/Object;ILcom/google/protobuf/l1;)Z
    .registers 5

    invoke-static {p1}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/google/protobuf/b2;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/google/protobuf/l1;->isInitialized(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private isListInitialized(Ljava/lang/Object;II)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "II)Z"
        }
    .end annotation

    invoke-static {p2}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/b2;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_12

    return v0

    :cond_12
    invoke-direct {p0, p3}, Lcom/google/protobuf/t0;->getMessageFieldSchema(I)Lcom/google/protobuf/l1;

    move-result-object p2

    const/4 p3, 0x0

    const/4 v1, 0x0

    :goto_18
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2c

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p2, v2}, Lcom/google/protobuf/l1;->isInitialized(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    return p3

    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_2c
    return v0
.end method

.method private isMapInitialized(Ljava/lang/Object;II)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/t0;->mapFieldSchema:Lcom/google/protobuf/l0;

    invoke-static {p2}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v1

    invoke-static {p1, v1, v2}, Lcom/google/protobuf/b2;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/protobuf/l0;->forMapData(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_16

    return v0

    :cond_16
    invoke-direct {p0, p3}, Lcom/google/protobuf/t0;->getMapFieldDefaultEntry(I)Ljava/lang/Object;

    move-result-object p2

    iget-object p3, p0, Lcom/google/protobuf/t0;->mapFieldSchema:Lcom/google/protobuf/l0;

    invoke-interface {p3, p2}, Lcom/google/protobuf/l0;->forMapMetadata(Ljava/lang/Object;)Lcom/google/protobuf/MapEntryLite$b;

    move-result-object p2

    iget-object p2, p2, Lcom/google/protobuf/MapEntryLite$b;->valueType:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-virtual {p2}, Lcom/google/protobuf/WireFormat$FieldType;->getJavaType()Lcom/google/protobuf/WireFormat$JavaType;

    move-result-object p2

    sget-object p3, Lcom/google/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/google/protobuf/WireFormat$JavaType;

    if-eq p2, p3, :cond_2b

    return v0

    :cond_2b
    const/4 p2, 0x0

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_34
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_54

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    if-nez p2, :cond_4c

    invoke-static {}, Lcom/google/protobuf/Protobuf;->getInstance()Lcom/google/protobuf/Protobuf;

    move-result-object p2

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/google/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/google/protobuf/l1;

    move-result-object p2

    :cond_4c
    invoke-interface {p2, p3}, Lcom/google/protobuf/l1;->isInitialized(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_34

    const/4 p1, 0x0

    return p1

    :cond_54
    return v0
.end method

.method private static isMutable(Ljava/lang/Object;)Z
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    instance-of v0, p0, Lcom/google/protobuf/GeneratedMessageLite;

    if-eqz v0, :cond_f

    check-cast p0, Lcom/google/protobuf/GeneratedMessageLite;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite;->isMutable()Z

    move-result p0

    return p0

    :cond_f
    const/4 p0, 0x1

    return p0
.end method

.method private isOneofCaseEqual(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)Z"
        }
    .end annotation

    invoke-direct {p0, p3}, Lcom/google/protobuf/t0;->presenceMaskAndOffsetAt(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/b2;->getInt(Ljava/lang/Object;J)I

    move-result p1

    invoke-static {p2, v0, v1}, Lcom/google/protobuf/b2;->getInt(Ljava/lang/Object;J)I

    move-result p2

    if-ne p1, p2, :cond_15

    const/4 p1, 0x1

    goto :goto_16

    :cond_15
    const/4 p1, 0x0

    :goto_16
    return p1
.end method

.method private isOneofPresent(Ljava/lang/Object;II)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)Z"
        }
    .end annotation

    invoke-direct {p0, p3}, Lcom/google/protobuf/t0;->presenceMaskAndOffsetAt(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/b2;->getInt(Ljava/lang/Object;J)I

    move-result p1

    if-ne p1, p2, :cond_11

    const/4 p1, 0x1

    goto :goto_12

    :cond_11
    const/4 p1, 0x0

    :goto_12
    return p1
.end method

.method private static isRequired(I)Z
    .registers 2

    const/high16 v0, 0x10000000

    and-int/2addr p0, v0

    if-eqz p0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method private static listAt(Ljava/lang/Object;J)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "J)",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/google/protobuf/b2;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private static longAt(Ljava/lang/Object;J)J
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)J"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/google/protobuf/b2;->getLong(Ljava/lang/Object;J)J

    move-result-wide p0

    return-wide p0
.end method

.method private mergeFromHelper(Lcom/google/protobuf/y1;Lcom/google/protobuf/u;Ljava/lang/Object;Lcom/google/protobuf/j1;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            "ET::",
            "Lcom/google/protobuf/FieldSet$b<",
            "TET;>;>(",
            "Lcom/google/protobuf/y1<",
            "TUT;TUB;>;",
            "Lcom/google/protobuf/u<",
            "TET;>;TT;",
            "Lcom/google/protobuf/j1;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v7, p1

    move-object/from16 v15, p3

    move-object/from16 v0, p4

    move-object/from16 v6, p5

    const/16 v17, 0x0

    move-object/from16 v5, v17

    move-object v9, v5

    :goto_f
    :try_start_f
    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/j1;->getFieldNumber()I

    move-result v2

    invoke-direct {v8, v2}, Lcom/google/protobuf/t0;->positionForFieldNumber(I)I

    move-result v3
    :try_end_17
    .catchall {:try_start_f .. :try_end_17} :catchall_6a7

    if-gez v3, :cond_b9

    const v1, 0x7fffffff

    if-ne v2, v1, :cond_3e

    iget v0, v8, Lcom/google/protobuf/t0;->checkInitializedCount:I

    move-object v4, v5

    :goto_21
    iget v1, v8, Lcom/google/protobuf/t0;->repeatedFieldOffsetStart:I

    if-ge v0, v1, :cond_38

    iget-object v1, v8, Lcom/google/protobuf/t0;->intArray:[I

    aget v3, v1, v0

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v5, p1

    move-object/from16 v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/google/protobuf/t0;->filterMapUnknownEnumValues(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/protobuf/y1;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    :cond_38
    if-eqz v4, :cond_3d

    invoke-virtual {v7, v15, v4}, Lcom/google/protobuf/y1;->setBuilderToMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3d
    return-void

    :cond_3e
    :try_start_3e
    iget-boolean v1, v8, Lcom/google/protobuf/t0;->hasExtensions:Z

    if-nez v1, :cond_47

    move-object/from16 v4, p2

    move-object/from16 v12, v17

    goto :goto_50

    :cond_47
    iget-object v1, v8, Lcom/google/protobuf/t0;->defaultInstance:Lcom/google/protobuf/q0;

    move-object/from16 v4, p2

    invoke-virtual {v4, v6, v1, v2}, Lcom/google/protobuf/u;->findExtensionByNumber(Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/q0;I)Ljava/lang/Object;

    move-result-object v1
    :try_end_4f
    .catchall {:try_start_3e .. :try_end_4f} :catchall_b5

    move-object v12, v1

    :goto_50
    if-eqz v12, :cond_71

    if-nez v9, :cond_5c

    :try_start_54
    invoke-virtual/range {p2 .. p3}, Lcom/google/protobuf/u;->getMutableExtensions(Ljava/lang/Object;)Lcom/google/protobuf/FieldSet;

    move-result-object v1
    :try_end_58
    .catchall {:try_start_54 .. :try_end_58} :catchall_59

    goto :goto_5d

    :catchall_59
    move-exception v0

    goto/16 :goto_6a9

    :cond_5c
    move-object v1, v9

    :goto_5d
    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v13, p5

    move-object v14, v1

    move-object v3, v15

    move-object v15, v5

    move-object/from16 v16, p1

    :try_start_6a
    invoke-virtual/range {v9 .. v16}, Lcom/google/protobuf/u;->parseExtension(Ljava/lang/Object;Lcom/google/protobuf/j1;Ljava/lang/Object;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/FieldSet;Ljava/lang/Object;Lcom/google/protobuf/y1;)Ljava/lang/Object;

    move-result-object v5

    move-object v9, v1

    :goto_6f
    move-object v15, v3

    goto :goto_f

    :cond_71
    move-object v3, v15

    invoke-virtual {v7, v0}, Lcom/google/protobuf/y1;->shouldDiscardUnknownFields(Lcom/google/protobuf/j1;)Z

    move-result v1

    if-eqz v1, :cond_7f

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/j1;->skipField()Z

    move-result v1

    if-eqz v1, :cond_8d

    :goto_7e
    goto :goto_6f

    :cond_7f
    if-nez v5, :cond_86

    invoke-virtual {v7, v3}, Lcom/google/protobuf/y1;->getBuilderFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    :cond_86
    invoke-virtual {v7, v5, v0}, Lcom/google/protobuf/y1;->mergeOneFieldFrom(Ljava/lang/Object;Lcom/google/protobuf/j1;)Z

    move-result v1
    :try_end_8a
    .catchall {:try_start_6a .. :try_end_8a} :catchall_b1

    if-eqz v1, :cond_8d

    goto :goto_7e

    :cond_8d
    iget v0, v8, Lcom/google/protobuf/t0;->checkInitializedCount:I

    move-object v4, v5

    :goto_90
    iget v1, v8, Lcom/google/protobuf/t0;->repeatedFieldOffsetStart:I

    if-ge v0, v1, :cond_aa

    iget-object v1, v8, Lcom/google/protobuf/t0;->intArray:[I

    aget v5, v1, v0

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object v10, v3

    move v3, v5

    move-object/from16 v5, p1

    move-object/from16 v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/google/protobuf/t0;->filterMapUnknownEnumValues(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/protobuf/y1;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v0, v0, 0x1

    move-object v3, v10

    goto :goto_90

    :cond_aa
    move-object v10, v3

    if-eqz v4, :cond_b0

    invoke-virtual {v7, v10, v4}, Lcom/google/protobuf/y1;->setBuilderToMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_b0
    return-void

    :catchall_b1
    move-exception v0

    move-object v10, v3

    goto/16 :goto_6a5

    :catchall_b5
    move-exception v0

    move-object v10, v15

    goto/16 :goto_6a5

    :cond_b9
    move-object/from16 v4, p2

    move-object v10, v15

    :try_start_bc
    invoke-direct {v8, v3}, Lcom/google/protobuf/t0;->typeAndOffsetAt(I)I

    move-result v11
    :try_end_c0
    .catchall {:try_start_bc .. :try_end_c0} :catchall_6a3

    :try_start_c0
    invoke-static {v11}, Lcom/google/protobuf/t0;->type(I)I

    move-result v1
    :try_end_c4
    .catch Lcom/google/protobuf/d0$a; {:try_start_c0 .. :try_end_c4} :catch_640
    .catchall {:try_start_c0 .. :try_end_c4} :catchall_6a3

    packed-switch v1, :pswitch_data_6cc

    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    if-nez v12, :cond_619

    :try_start_cc
    invoke-virtual {v14, v10}, Lcom/google/protobuf/y1;->getBuilderFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_d0
    .catch Lcom/google/protobuf/d0$a; {:try_start_cc .. :try_end_d0} :catch_615
    .catchall {:try_start_cc .. :try_end_d0} :catchall_611

    goto/16 :goto_617

    :pswitch_d2
    :try_start_d2
    invoke-direct {v8, v10, v2, v3}, Lcom/google/protobuf/t0;->mutableOneofMessageFieldForMerge(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/q0;

    invoke-direct {v8, v3}, Lcom/google/protobuf/t0;->getMessageFieldSchema(I)Lcom/google/protobuf/l1;

    move-result-object v11

    invoke-interface {v0, v1, v11, v6}, Lcom/google/protobuf/j1;->mergeGroupField(Ljava/lang/Object;Lcom/google/protobuf/l1;Lcom/google/protobuf/ExtensionRegistryLite;)V

    invoke-direct {v8, v10, v2, v3, v1}, Lcom/google/protobuf/t0;->storeOneofMessageField(Ljava/lang/Object;IILjava/lang/Object;)V

    goto/16 :goto_194

    :pswitch_e4
    invoke-static {v11}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v11

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/j1;->readSInt64()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v10, v11, v12, v1}, Lcom/google/protobuf/b2;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {v8, v10, v2, v3}, Lcom/google/protobuf/t0;->setOneofPresent(Ljava/lang/Object;II)V

    goto/16 :goto_194

    :pswitch_f8
    invoke-static {v11}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v11

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/j1;->readSInt32()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v10, v11, v12, v1}, Lcom/google/protobuf/b2;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {v8, v10, v2, v3}, Lcom/google/protobuf/t0;->setOneofPresent(Ljava/lang/Object;II)V

    goto/16 :goto_194

    :pswitch_10c
    invoke-static {v11}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v11

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/j1;->readSFixed64()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v10, v11, v12, v1}, Lcom/google/protobuf/b2;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {v8, v10, v2, v3}, Lcom/google/protobuf/t0;->setOneofPresent(Ljava/lang/Object;II)V

    goto/16 :goto_194

    :pswitch_120
    invoke-static {v11}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v11

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/j1;->readSFixed32()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v10, v11, v12, v1}, Lcom/google/protobuf/b2;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {v8, v10, v2, v3}, Lcom/google/protobuf/t0;->setOneofPresent(Ljava/lang/Object;II)V

    goto :goto_194

    :pswitch_133
    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/j1;->readEnum()I

    move-result v1

    invoke-direct {v8, v3}, Lcom/google/protobuf/t0;->getEnumFieldVerifier(I)Lcom/google/protobuf/Internal$e;

    move-result-object v12

    if-eqz v12, :cond_14c

    invoke-interface {v12, v1}, Lcom/google/protobuf/Internal$e;->isInRange(I)Z

    move-result v12

    if-eqz v12, :cond_144

    goto :goto_14c

    :cond_144
    invoke-static {v10, v2, v1, v5, v7}, Lcom/google/protobuf/SchemaUtil;->storeUnknownEnum(Ljava/lang/Object;IILjava/lang/Object;Lcom/google/protobuf/y1;)Ljava/lang/Object;

    move-result-object v5

    move-object v13, v6

    move-object v14, v7

    goto/16 :goto_69c

    :cond_14c
    :goto_14c
    invoke-static {v11}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v10, v11, v12, v1}, Lcom/google/protobuf/b2;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {v8, v10, v2, v3}, Lcom/google/protobuf/t0;->setOneofPresent(Ljava/lang/Object;II)V

    goto :goto_194

    :pswitch_15b
    invoke-static {v11}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v11

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/j1;->readUInt32()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v10, v11, v12, v1}, Lcom/google/protobuf/b2;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {v8, v10, v2, v3}, Lcom/google/protobuf/t0;->setOneofPresent(Ljava/lang/Object;II)V

    goto :goto_194

    :pswitch_16e
    invoke-static {v11}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v11

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/j1;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v10, v11, v12, v1}, Lcom/google/protobuf/b2;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {v8, v10, v2, v3}, Lcom/google/protobuf/t0;->setOneofPresent(Ljava/lang/Object;II)V

    goto :goto_194

    :pswitch_17d
    invoke-direct {v8, v10, v2, v3}, Lcom/google/protobuf/t0;->mutableOneofMessageFieldForMerge(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/q0;

    invoke-direct {v8, v3}, Lcom/google/protobuf/t0;->getMessageFieldSchema(I)Lcom/google/protobuf/l1;

    move-result-object v11

    invoke-interface {v0, v1, v11, v6}, Lcom/google/protobuf/j1;->mergeMessageField(Ljava/lang/Object;Lcom/google/protobuf/l1;Lcom/google/protobuf/ExtensionRegistryLite;)V

    invoke-direct {v8, v10, v2, v3, v1}, Lcom/google/protobuf/t0;->storeOneofMessageField(Ljava/lang/Object;IILjava/lang/Object;)V

    goto :goto_194

    :pswitch_18e
    invoke-direct {v8, v10, v11, v0}, Lcom/google/protobuf/t0;->readString(Ljava/lang/Object;ILcom/google/protobuf/j1;)V

    invoke-direct {v8, v10, v2, v3}, Lcom/google/protobuf/t0;->setOneofPresent(Ljava/lang/Object;II)V

    :goto_194
    move-object v12, v5

    move-object v13, v6

    goto/16 :goto_247

    :pswitch_198
    invoke-static {v11}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v11

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/j1;->readBool()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v10, v11, v12, v1}, Lcom/google/protobuf/b2;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {v8, v10, v2, v3}, Lcom/google/protobuf/t0;->setOneofPresent(Ljava/lang/Object;II)V

    goto :goto_194

    :pswitch_1ab
    invoke-static {v11}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v11

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/j1;->readFixed32()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v10, v11, v12, v1}, Lcom/google/protobuf/b2;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {v8, v10, v2, v3}, Lcom/google/protobuf/t0;->setOneofPresent(Ljava/lang/Object;II)V

    goto :goto_194

    :pswitch_1be
    invoke-static {v11}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v11

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/j1;->readFixed64()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v10, v11, v12, v1}, Lcom/google/protobuf/b2;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {v8, v10, v2, v3}, Lcom/google/protobuf/t0;->setOneofPresent(Ljava/lang/Object;II)V

    goto :goto_194

    :pswitch_1d1
    invoke-static {v11}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v11

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/j1;->readInt32()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v10, v11, v12, v1}, Lcom/google/protobuf/b2;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {v8, v10, v2, v3}, Lcom/google/protobuf/t0;->setOneofPresent(Ljava/lang/Object;II)V

    goto :goto_194

    :pswitch_1e4
    invoke-static {v11}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v11

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/j1;->readUInt64()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v10, v11, v12, v1}, Lcom/google/protobuf/b2;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {v8, v10, v2, v3}, Lcom/google/protobuf/t0;->setOneofPresent(Ljava/lang/Object;II)V

    goto :goto_194

    :pswitch_1f7
    invoke-static {v11}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v11

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/j1;->readInt64()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v10, v11, v12, v1}, Lcom/google/protobuf/b2;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {v8, v10, v2, v3}, Lcom/google/protobuf/t0;->setOneofPresent(Ljava/lang/Object;II)V

    goto :goto_194

    :pswitch_20a
    invoke-static {v11}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v11

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/j1;->readFloat()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v10, v11, v12, v1}, Lcom/google/protobuf/b2;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {v8, v10, v2, v3}, Lcom/google/protobuf/t0;->setOneofPresent(Ljava/lang/Object;II)V

    goto/16 :goto_194

    :pswitch_21e
    invoke-static {v11}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v11

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/j1;->readDouble()D

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v10, v11, v12, v1}, Lcom/google/protobuf/b2;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {v8, v10, v2, v3}, Lcom/google/protobuf/t0;->setOneofPresent(Ljava/lang/Object;II)V
    :try_end_230
    .catch Lcom/google/protobuf/d0$a; {:try_start_d2 .. :try_end_230} :catch_641
    .catchall {:try_start_d2 .. :try_end_230} :catchall_232

    goto/16 :goto_194

    :catchall_232
    move-exception v0

    goto/16 :goto_6a5

    :pswitch_235
    :try_start_235
    invoke-direct {v8, v3}, Lcom/google/protobuf/t0;->getMapFieldDefaultEntry(I)Ljava/lang/Object;

    move-result-object v11
    :try_end_239
    .catch Lcom/google/protobuf/d0$a; {:try_start_235 .. :try_end_239} :catch_640
    .catchall {:try_start_235 .. :try_end_239} :catchall_6a3

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object v4, v11

    move-object v12, v5

    move-object/from16 v5, p5

    move-object v13, v6

    move-object/from16 v6, p4

    :try_start_244
    invoke-direct/range {v1 .. v6}, Lcom/google/protobuf/t0;->mergeMap(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/j1;)V

    :goto_247
    move-object v14, v7

    goto/16 :goto_60e

    :pswitch_24a
    move-object v12, v5

    move-object v13, v6

    invoke-static {v11}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v4

    invoke-direct {v8, v3}, Lcom/google/protobuf/t0;->getMessageFieldSchema(I)Lcom/google/protobuf/l1;

    move-result-object v6
    :try_end_254
    .catch Lcom/google/protobuf/d0$a; {:try_start_244 .. :try_end_254} :catch_267
    .catchall {:try_start_244 .. :try_end_254} :catchall_263

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-wide v3, v4

    move-object/from16 v5, p4

    move-object v14, v7

    move-object/from16 v7, p5

    :try_start_25e
    invoke-direct/range {v1 .. v7}, Lcom/google/protobuf/t0;->readGroupList(Ljava/lang/Object;JLcom/google/protobuf/j1;Lcom/google/protobuf/l1;Lcom/google/protobuf/ExtensionRegistryLite;)V

    goto/16 :goto_60e

    :catchall_263
    move-exception v0

    move-object v14, v7

    goto/16 :goto_612

    :catch_267
    move-object v14, v7

    goto/16 :goto_615

    :pswitch_26a
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    iget-object v1, v8, Lcom/google/protobuf/t0;->listFieldSchema:Lcom/google/protobuf/i0;

    invoke-static {v11}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/i0;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/j1;->readSInt64List(Ljava/util/List;)V

    goto/16 :goto_60e

    :pswitch_27c
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    iget-object v1, v8, Lcom/google/protobuf/t0;->listFieldSchema:Lcom/google/protobuf/i0;

    invoke-static {v11}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/i0;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/j1;->readSInt32List(Ljava/util/List;)V

    goto/16 :goto_60e

    :pswitch_28e
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    iget-object v1, v8, Lcom/google/protobuf/t0;->listFieldSchema:Lcom/google/protobuf/i0;

    invoke-static {v11}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/i0;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/j1;->readSFixed64List(Ljava/util/List;)V

    goto/16 :goto_60e

    :pswitch_2a0
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    iget-object v1, v8, Lcom/google/protobuf/t0;->listFieldSchema:Lcom/google/protobuf/i0;

    invoke-static {v11}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/i0;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/j1;->readSFixed32List(Ljava/util/List;)V

    goto/16 :goto_60e

    :pswitch_2b2
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    iget-object v1, v8, Lcom/google/protobuf/t0;->listFieldSchema:Lcom/google/protobuf/i0;

    invoke-static {v11}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v4

    invoke-virtual {v1, v10, v4, v5}, Lcom/google/protobuf/i0;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/google/protobuf/j1;->readEnumList(Ljava/util/List;)V

    invoke-direct {v8, v3}, Lcom/google/protobuf/t0;->getEnumFieldVerifier(I)Lcom/google/protobuf/Internal$e;

    move-result-object v5

    move-object/from16 v1, p3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v12

    move-object/from16 v6, p1

    invoke-static/range {v1 .. v6}, Lcom/google/protobuf/SchemaUtil;->filterUnknownEnumList(Ljava/lang/Object;ILjava/util/List;Lcom/google/protobuf/Internal$e;Ljava/lang/Object;Lcom/google/protobuf/y1;)Ljava/lang/Object;

    move-result-object v5

    goto/16 :goto_69c

    :pswitch_2d3
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    iget-object v1, v8, Lcom/google/protobuf/t0;->listFieldSchema:Lcom/google/protobuf/i0;

    invoke-static {v11}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/i0;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/j1;->readUInt32List(Ljava/util/List;)V

    goto/16 :goto_60e

    :pswitch_2e5
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    iget-object v1, v8, Lcom/google/protobuf/t0;->listFieldSchema:Lcom/google/protobuf/i0;

    invoke-static {v11}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/i0;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/j1;->readBoolList(Ljava/util/List;)V

    goto/16 :goto_60e

    :pswitch_2f7
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    iget-object v1, v8, Lcom/google/protobuf/t0;->listFieldSchema:Lcom/google/protobuf/i0;

    invoke-static {v11}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/i0;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/j1;->readFixed32List(Ljava/util/List;)V

    goto/16 :goto_60e

    :pswitch_309
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    iget-object v1, v8, Lcom/google/protobuf/t0;->listFieldSchema:Lcom/google/protobuf/i0;

    invoke-static {v11}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/i0;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/j1;->readFixed64List(Ljava/util/List;)V

    goto/16 :goto_60e

    :pswitch_31b
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    iget-object v1, v8, Lcom/google/protobuf/t0;->listFieldSchema:Lcom/google/protobuf/i0;

    invoke-static {v11}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/i0;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/j1;->readInt32List(Ljava/util/List;)V

    goto/16 :goto_60e

    :pswitch_32d
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    iget-object v1, v8, Lcom/google/protobuf/t0;->listFieldSchema:Lcom/google/protobuf/i0;

    invoke-static {v11}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/i0;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/j1;->readUInt64List(Ljava/util/List;)V

    goto/16 :goto_60e

    :pswitch_33f
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    iget-object v1, v8, Lcom/google/protobuf/t0;->listFieldSchema:Lcom/google/protobuf/i0;

    invoke-static {v11}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/i0;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/j1;->readInt64List(Ljava/util/List;)V

    goto/16 :goto_60e

    :pswitch_351
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    iget-object v1, v8, Lcom/google/protobuf/t0;->listFieldSchema:Lcom/google/protobuf/i0;

    invoke-static {v11}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/i0;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/j1;->readFloatList(Ljava/util/List;)V

    goto/16 :goto_60e

    :pswitch_363
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    iget-object v1, v8, Lcom/google/protobuf/t0;->listFieldSchema:Lcom/google/protobuf/i0;

    invoke-static {v11}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/i0;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/j1;->readDoubleList(Ljava/util/List;)V

    goto/16 :goto_60e

    :pswitch_375
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    iget-object v1, v8, Lcom/google/protobuf/t0;->listFieldSchema:Lcom/google/protobuf/i0;

    invoke-static {v11}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/i0;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/j1;->readSInt64List(Ljava/util/List;)V

    goto/16 :goto_60e

    :pswitch_387
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    iget-object v1, v8, Lcom/google/protobuf/t0;->listFieldSchema:Lcom/google/protobuf/i0;

    invoke-static {v11}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/i0;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/j1;->readSInt32List(Ljava/util/List;)V

    goto/16 :goto_60e

    :pswitch_399
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    iget-object v1, v8, Lcom/google/protobuf/t0;->listFieldSchema:Lcom/google/protobuf/i0;

    invoke-static {v11}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/i0;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/j1;->readSFixed64List(Ljava/util/List;)V

    goto/16 :goto_60e

    :pswitch_3ab
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    iget-object v1, v8, Lcom/google/protobuf/t0;->listFieldSchema:Lcom/google/protobuf/i0;

    invoke-static {v11}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/i0;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/j1;->readSFixed32List(Ljava/util/List;)V

    goto/16 :goto_60e

    :pswitch_3bd
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    iget-object v1, v8, Lcom/google/protobuf/t0;->listFieldSchema:Lcom/google/protobuf/i0;

    invoke-static {v11}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v4

    invoke-virtual {v1, v10, v4, v5}, Lcom/google/protobuf/i0;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/google/protobuf/j1;->readEnumList(Ljava/util/List;)V

    invoke-direct {v8, v3}, Lcom/google/protobuf/t0;->getEnumFieldVerifier(I)Lcom/google/protobuf/Internal$e;

    move-result-object v5

    move-object/from16 v1, p3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v12

    move-object/from16 v6, p1

    invoke-static/range {v1 .. v6}, Lcom/google/protobuf/SchemaUtil;->filterUnknownEnumList(Ljava/lang/Object;ILjava/util/List;Lcom/google/protobuf/Internal$e;Ljava/lang/Object;Lcom/google/protobuf/y1;)Ljava/lang/Object;

    move-result-object v5

    goto/16 :goto_69c

    :pswitch_3de
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    iget-object v1, v8, Lcom/google/protobuf/t0;->listFieldSchema:Lcom/google/protobuf/i0;

    invoke-static {v11}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/i0;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/j1;->readUInt32List(Ljava/util/List;)V

    goto/16 :goto_60e

    :pswitch_3f0
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    iget-object v1, v8, Lcom/google/protobuf/t0;->listFieldSchema:Lcom/google/protobuf/i0;

    invoke-static {v11}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/i0;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/j1;->readBytesList(Ljava/util/List;)V

    goto/16 :goto_60e

    :pswitch_402
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    invoke-direct {v8, v3}, Lcom/google/protobuf/t0;->getMessageFieldSchema(I)Lcom/google/protobuf/l1;

    move-result-object v5

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move v3, v11

    move-object/from16 v4, p4

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/google/protobuf/t0;->readMessageList(Ljava/lang/Object;ILcom/google/protobuf/j1;Lcom/google/protobuf/l1;Lcom/google/protobuf/ExtensionRegistryLite;)V

    goto/16 :goto_60e

    :pswitch_417
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    invoke-direct {v8, v10, v11, v0}, Lcom/google/protobuf/t0;->readStringList(Ljava/lang/Object;ILcom/google/protobuf/j1;)V

    goto/16 :goto_60e

    :pswitch_41f
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    iget-object v1, v8, Lcom/google/protobuf/t0;->listFieldSchema:Lcom/google/protobuf/i0;

    invoke-static {v11}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/i0;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/j1;->readBoolList(Ljava/util/List;)V

    goto/16 :goto_60e

    :pswitch_431
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    iget-object v1, v8, Lcom/google/protobuf/t0;->listFieldSchema:Lcom/google/protobuf/i0;

    invoke-static {v11}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/i0;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/j1;->readFixed32List(Ljava/util/List;)V

    goto/16 :goto_60e

    :pswitch_443
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    iget-object v1, v8, Lcom/google/protobuf/t0;->listFieldSchema:Lcom/google/protobuf/i0;

    invoke-static {v11}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/i0;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/j1;->readFixed64List(Ljava/util/List;)V

    goto/16 :goto_60e

    :pswitch_455
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    iget-object v1, v8, Lcom/google/protobuf/t0;->listFieldSchema:Lcom/google/protobuf/i0;

    invoke-static {v11}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/i0;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/j1;->readInt32List(Ljava/util/List;)V

    goto/16 :goto_60e

    :pswitch_467
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    iget-object v1, v8, Lcom/google/protobuf/t0;->listFieldSchema:Lcom/google/protobuf/i0;

    invoke-static {v11}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/i0;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/j1;->readUInt64List(Ljava/util/List;)V

    goto/16 :goto_60e

    :pswitch_479
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    iget-object v1, v8, Lcom/google/protobuf/t0;->listFieldSchema:Lcom/google/protobuf/i0;

    invoke-static {v11}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/i0;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/j1;->readInt64List(Ljava/util/List;)V

    goto/16 :goto_60e

    :pswitch_48b
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    iget-object v1, v8, Lcom/google/protobuf/t0;->listFieldSchema:Lcom/google/protobuf/i0;

    invoke-static {v11}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/i0;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/j1;->readFloatList(Ljava/util/List;)V

    goto/16 :goto_60e

    :pswitch_49d
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    iget-object v1, v8, Lcom/google/protobuf/t0;->listFieldSchema:Lcom/google/protobuf/i0;

    invoke-static {v11}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/i0;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/j1;->readDoubleList(Ljava/util/List;)V

    goto/16 :goto_60e

    :pswitch_4af
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    invoke-direct {v8, v10, v3}, Lcom/google/protobuf/t0;->mutableMessageFieldForMerge(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/q0;

    invoke-direct {v8, v3}, Lcom/google/protobuf/t0;->getMessageFieldSchema(I)Lcom/google/protobuf/l1;

    move-result-object v2

    invoke-interface {v0, v1, v2, v13}, Lcom/google/protobuf/j1;->mergeGroupField(Ljava/lang/Object;Lcom/google/protobuf/l1;Lcom/google/protobuf/ExtensionRegistryLite;)V

    invoke-direct {v8, v10, v3, v1}, Lcom/google/protobuf/t0;->storeMessageField(Ljava/lang/Object;ILjava/lang/Object;)V

    goto/16 :goto_60e

    :pswitch_4c4
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    invoke-static {v11}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/j1;->readSInt64()J

    move-result-wide v4

    invoke-static {v10, v1, v2, v4, v5}, Lcom/google/protobuf/b2;->putLong(Ljava/lang/Object;JJ)V

    invoke-direct {v8, v10, v3}, Lcom/google/protobuf/t0;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_60e

    :pswitch_4d7
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    invoke-static {v11}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/j1;->readSInt32()I

    move-result v4

    invoke-static {v10, v1, v2, v4}, Lcom/google/protobuf/b2;->putInt(Ljava/lang/Object;JI)V

    invoke-direct {v8, v10, v3}, Lcom/google/protobuf/t0;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_60e

    :pswitch_4ea
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    invoke-static {v11}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/j1;->readSFixed64()J

    move-result-wide v4

    invoke-static {v10, v1, v2, v4, v5}, Lcom/google/protobuf/b2;->putLong(Ljava/lang/Object;JJ)V

    invoke-direct {v8, v10, v3}, Lcom/google/protobuf/t0;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_60e

    :pswitch_4fd
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    invoke-static {v11}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/j1;->readSFixed32()I

    move-result v4

    invoke-static {v10, v1, v2, v4}, Lcom/google/protobuf/b2;->putInt(Ljava/lang/Object;JI)V

    invoke-direct {v8, v10, v3}, Lcom/google/protobuf/t0;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_60e

    :pswitch_510
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/j1;->readEnum()I

    move-result v1

    invoke-direct {v8, v3}, Lcom/google/protobuf/t0;->getEnumFieldVerifier(I)Lcom/google/protobuf/Internal$e;

    move-result-object v4

    if-eqz v4, :cond_52a

    invoke-interface {v4, v1}, Lcom/google/protobuf/Internal$e;->isInRange(I)Z

    move-result v4

    if-eqz v4, :cond_524

    goto :goto_52a

    :cond_524
    invoke-static {v10, v2, v1, v12, v14}, Lcom/google/protobuf/SchemaUtil;->storeUnknownEnum(Ljava/lang/Object;IILjava/lang/Object;Lcom/google/protobuf/y1;)Ljava/lang/Object;

    move-result-object v5

    goto/16 :goto_69c

    :cond_52a
    :goto_52a
    invoke-static {v11}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v4

    invoke-static {v10, v4, v5, v1}, Lcom/google/protobuf/b2;->putInt(Ljava/lang/Object;JI)V

    invoke-direct {v8, v10, v3}, Lcom/google/protobuf/t0;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_60e

    :pswitch_536
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    invoke-static {v11}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/j1;->readUInt32()I

    move-result v4

    invoke-static {v10, v1, v2, v4}, Lcom/google/protobuf/b2;->putInt(Ljava/lang/Object;JI)V

    invoke-direct {v8, v10, v3}, Lcom/google/protobuf/t0;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_60e

    :pswitch_549
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    invoke-static {v11}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/j1;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v10, v1, v2, v4}, Lcom/google/protobuf/b2;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {v8, v10, v3}, Lcom/google/protobuf/t0;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_60e

    :pswitch_55c
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    invoke-direct {v8, v10, v3}, Lcom/google/protobuf/t0;->mutableMessageFieldForMerge(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/q0;

    invoke-direct {v8, v3}, Lcom/google/protobuf/t0;->getMessageFieldSchema(I)Lcom/google/protobuf/l1;

    move-result-object v2

    invoke-interface {v0, v1, v2, v13}, Lcom/google/protobuf/j1;->mergeMessageField(Ljava/lang/Object;Lcom/google/protobuf/l1;Lcom/google/protobuf/ExtensionRegistryLite;)V

    invoke-direct {v8, v10, v3, v1}, Lcom/google/protobuf/t0;->storeMessageField(Ljava/lang/Object;ILjava/lang/Object;)V

    goto/16 :goto_60e

    :pswitch_571
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    invoke-direct {v8, v10, v11, v0}, Lcom/google/protobuf/t0;->readString(Ljava/lang/Object;ILcom/google/protobuf/j1;)V

    invoke-direct {v8, v10, v3}, Lcom/google/protobuf/t0;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_60e

    :pswitch_57c
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    invoke-static {v11}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/j1;->readBool()Z

    move-result v4

    invoke-static {v10, v1, v2, v4}, Lcom/google/protobuf/b2;->putBoolean(Ljava/lang/Object;JZ)V

    invoke-direct {v8, v10, v3}, Lcom/google/protobuf/t0;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_60e

    :pswitch_58f
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    invoke-static {v11}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/j1;->readFixed32()I

    move-result v4

    invoke-static {v10, v1, v2, v4}, Lcom/google/protobuf/b2;->putInt(Ljava/lang/Object;JI)V

    invoke-direct {v8, v10, v3}, Lcom/google/protobuf/t0;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_60e

    :pswitch_5a2
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    invoke-static {v11}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/j1;->readFixed64()J

    move-result-wide v4

    invoke-static {v10, v1, v2, v4, v5}, Lcom/google/protobuf/b2;->putLong(Ljava/lang/Object;JJ)V

    invoke-direct {v8, v10, v3}, Lcom/google/protobuf/t0;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_60e

    :pswitch_5b5
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    invoke-static {v11}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/j1;->readInt32()I

    move-result v4

    invoke-static {v10, v1, v2, v4}, Lcom/google/protobuf/b2;->putInt(Ljava/lang/Object;JI)V

    invoke-direct {v8, v10, v3}, Lcom/google/protobuf/t0;->setFieldPresent(Ljava/lang/Object;I)V

    goto :goto_60e

    :pswitch_5c7
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    invoke-static {v11}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/j1;->readUInt64()J

    move-result-wide v4

    invoke-static {v10, v1, v2, v4, v5}, Lcom/google/protobuf/b2;->putLong(Ljava/lang/Object;JJ)V

    invoke-direct {v8, v10, v3}, Lcom/google/protobuf/t0;->setFieldPresent(Ljava/lang/Object;I)V

    goto :goto_60e

    :pswitch_5d9
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    invoke-static {v11}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/j1;->readInt64()J

    move-result-wide v4

    invoke-static {v10, v1, v2, v4, v5}, Lcom/google/protobuf/b2;->putLong(Ljava/lang/Object;JJ)V

    invoke-direct {v8, v10, v3}, Lcom/google/protobuf/t0;->setFieldPresent(Ljava/lang/Object;I)V

    goto :goto_60e

    :pswitch_5eb
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    invoke-static {v11}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/j1;->readFloat()F

    move-result v4

    invoke-static {v10, v1, v2, v4}, Lcom/google/protobuf/b2;->putFloat(Ljava/lang/Object;JF)V

    invoke-direct {v8, v10, v3}, Lcom/google/protobuf/t0;->setFieldPresent(Ljava/lang/Object;I)V

    goto :goto_60e

    :pswitch_5fd
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    invoke-static {v11}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/j1;->readDouble()D

    move-result-wide v4

    invoke-static {v10, v1, v2, v4, v5}, Lcom/google/protobuf/b2;->putDouble(Ljava/lang/Object;JD)V

    invoke-direct {v8, v10, v3}, Lcom/google/protobuf/t0;->setFieldPresent(Ljava/lang/Object;I)V
    :try_end_60e
    .catch Lcom/google/protobuf/d0$a; {:try_start_25e .. :try_end_60e} :catch_615
    .catchall {:try_start_25e .. :try_end_60e} :catchall_611

    :goto_60e
    move-object v5, v12

    goto/16 :goto_69c

    :catchall_611
    move-exception v0

    :goto_612
    move-object v5, v12

    goto/16 :goto_6ab

    :catch_615
    :goto_615
    move-object v5, v12

    goto :goto_643

    :goto_617
    move-object v5, v1

    goto :goto_61a

    :cond_619
    move-object v5, v12

    :goto_61a
    :try_start_61a
    invoke-virtual {v14, v5, v0}, Lcom/google/protobuf/y1;->mergeOneFieldFrom(Ljava/lang/Object;Lcom/google/protobuf/j1;)Z

    move-result v1
    :try_end_61e
    .catch Lcom/google/protobuf/d0$a; {:try_start_61a .. :try_end_61e} :catch_643
    .catchall {:try_start_61a .. :try_end_61e} :catchall_6a1

    if-nez v1, :cond_69c

    iget v0, v8, Lcom/google/protobuf/t0;->checkInitializedCount:I

    move-object v4, v5

    :goto_623
    iget v1, v8, Lcom/google/protobuf/t0;->repeatedFieldOffsetStart:I

    if-ge v0, v1, :cond_63a

    iget-object v1, v8, Lcom/google/protobuf/t0;->intArray:[I

    aget v3, v1, v0

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v5, p1

    move-object/from16 v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/google/protobuf/t0;->filterMapUnknownEnumValues(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/protobuf/y1;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_623

    :cond_63a
    if-eqz v4, :cond_63f

    invoke-virtual {v14, v10, v4}, Lcom/google/protobuf/y1;->setBuilderToMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_63f
    return-void

    :catch_640
    move-object v12, v5

    :catch_641
    move-object v13, v6

    move-object v14, v7

    :catch_643
    :goto_643
    :try_start_643
    invoke-virtual {v14, v0}, Lcom/google/protobuf/y1;->shouldDiscardUnknownFields(Lcom/google/protobuf/j1;)Z

    move-result v1

    if-eqz v1, :cond_66f

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/j1;->skipField()Z

    move-result v1
    :try_end_64d
    .catchall {:try_start_643 .. :try_end_64d} :catchall_6a1

    if-nez v1, :cond_69c

    iget v0, v8, Lcom/google/protobuf/t0;->checkInitializedCount:I

    move-object v4, v5

    :goto_652
    iget v1, v8, Lcom/google/protobuf/t0;->repeatedFieldOffsetStart:I

    if-ge v0, v1, :cond_669

    iget-object v1, v8, Lcom/google/protobuf/t0;->intArray:[I

    aget v3, v1, v0

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v5, p1

    move-object/from16 v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/google/protobuf/t0;->filterMapUnknownEnumValues(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/protobuf/y1;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_652

    :cond_669
    if-eqz v4, :cond_66e

    invoke-virtual {v14, v10, v4}, Lcom/google/protobuf/y1;->setBuilderToMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_66e
    return-void

    :cond_66f
    if-nez v5, :cond_676

    :try_start_671
    invoke-virtual {v14, v10}, Lcom/google/protobuf/y1;->getBuilderFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    :cond_676
    invoke-virtual {v14, v5, v0}, Lcom/google/protobuf/y1;->mergeOneFieldFrom(Ljava/lang/Object;Lcom/google/protobuf/j1;)Z

    move-result v1
    :try_end_67a
    .catchall {:try_start_671 .. :try_end_67a} :catchall_6a1

    if-nez v1, :cond_69c

    iget v0, v8, Lcom/google/protobuf/t0;->checkInitializedCount:I

    move-object v4, v5

    :goto_67f
    iget v1, v8, Lcom/google/protobuf/t0;->repeatedFieldOffsetStart:I

    if-ge v0, v1, :cond_696

    iget-object v1, v8, Lcom/google/protobuf/t0;->intArray:[I

    aget v3, v1, v0

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v5, p1

    move-object/from16 v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/google/protobuf/t0;->filterMapUnknownEnumValues(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/protobuf/y1;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_67f

    :cond_696
    if-eqz v4, :cond_69b

    invoke-virtual {v14, v10, v4}, Lcom/google/protobuf/y1;->setBuilderToMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_69b
    return-void

    :cond_69c
    :goto_69c
    move-object v15, v10

    move-object v6, v13

    move-object v7, v14

    goto/16 :goto_f

    :catchall_6a1
    move-exception v0

    goto :goto_6ab

    :catchall_6a3
    move-exception v0

    move-object v12, v5

    :goto_6a5
    move-object v14, v7

    goto :goto_6ab

    :catchall_6a7
    move-exception v0

    move-object v12, v5

    :goto_6a9
    move-object v14, v7

    move-object v10, v15

    :goto_6ab
    iget v1, v8, Lcom/google/protobuf/t0;->checkInitializedCount:I

    move v7, v1

    move-object v4, v5

    :goto_6af
    iget v1, v8, Lcom/google/protobuf/t0;->repeatedFieldOffsetStart:I

    if-ge v7, v1, :cond_6c6

    iget-object v1, v8, Lcom/google/protobuf/t0;->intArray:[I

    aget v3, v1, v7

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v5, p1

    move-object/from16 v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/google/protobuf/t0;->filterMapUnknownEnumValues(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/protobuf/y1;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v7, v7, 0x1

    goto :goto_6af

    :cond_6c6
    if-eqz v4, :cond_6cb

    invoke-virtual {v14, v10, v4}, Lcom/google/protobuf/y1;->setBuilderToMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_6cb
    throw v0

    :pswitch_data_6cc
    .packed-switch 0x0
        :pswitch_5fd
        :pswitch_5eb
        :pswitch_5d9
        :pswitch_5c7
        :pswitch_5b5
        :pswitch_5a2
        :pswitch_58f
        :pswitch_57c
        :pswitch_571
        :pswitch_55c
        :pswitch_549
        :pswitch_536
        :pswitch_510
        :pswitch_4fd
        :pswitch_4ea
        :pswitch_4d7
        :pswitch_4c4
        :pswitch_4af
        :pswitch_49d
        :pswitch_48b
        :pswitch_479
        :pswitch_467
        :pswitch_455
        :pswitch_443
        :pswitch_431
        :pswitch_41f
        :pswitch_417
        :pswitch_402
        :pswitch_3f0
        :pswitch_3de
        :pswitch_3bd
        :pswitch_3ab
        :pswitch_399
        :pswitch_387
        :pswitch_375
        :pswitch_363
        :pswitch_351
        :pswitch_33f
        :pswitch_32d
        :pswitch_31b
        :pswitch_309
        :pswitch_2f7
        :pswitch_2e5
        :pswitch_2d3
        :pswitch_2b2
        :pswitch_2a0
        :pswitch_28e
        :pswitch_27c
        :pswitch_26a
        :pswitch_24a
        :pswitch_235
        :pswitch_21e
        :pswitch_20a
        :pswitch_1f7
        :pswitch_1e4
        :pswitch_1d1
        :pswitch_1be
        :pswitch_1ab
        :pswitch_198
        :pswitch_18e
        :pswitch_17d
        :pswitch_16e
        :pswitch_15b
        :pswitch_133
        :pswitch_120
        :pswitch_10c
        :pswitch_f8
        :pswitch_e4
        :pswitch_d2
    .end packed-switch
.end method

.method private final mergeMap(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/j1;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "I",
            "Ljava/lang/Object;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            "Lcom/google/protobuf/j1;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/google/protobuf/t0;->typeAndOffsetAt(I)I

    move-result p2

    invoke-static {p2}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/b2;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_18

    iget-object p2, p0, Lcom/google/protobuf/t0;->mapFieldSchema:Lcom/google/protobuf/l0;

    invoke-interface {p2, p3}, Lcom/google/protobuf/l0;->newMapField(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, v0, v1, p2}, Lcom/google/protobuf/b2;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_2f

    :cond_18
    iget-object v2, p0, Lcom/google/protobuf/t0;->mapFieldSchema:Lcom/google/protobuf/l0;

    invoke-interface {v2, p2}, Lcom/google/protobuf/l0;->isImmutable(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    iget-object v2, p0, Lcom/google/protobuf/t0;->mapFieldSchema:Lcom/google/protobuf/l0;

    invoke-interface {v2, p3}, Lcom/google/protobuf/l0;->newMapField(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/google/protobuf/t0;->mapFieldSchema:Lcom/google/protobuf/l0;

    invoke-interface {v3, v2, p2}, Lcom/google/protobuf/l0;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v0, v1, v2}, Lcom/google/protobuf/b2;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object p2, v2

    :cond_2f
    :goto_2f
    iget-object p1, p0, Lcom/google/protobuf/t0;->mapFieldSchema:Lcom/google/protobuf/l0;

    invoke-interface {p1, p2}, Lcom/google/protobuf/l0;->forMutableMapData(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    iget-object p2, p0, Lcom/google/protobuf/t0;->mapFieldSchema:Lcom/google/protobuf/l0;

    invoke-interface {p2, p3}, Lcom/google/protobuf/l0;->forMapMetadata(Ljava/lang/Object;)Lcom/google/protobuf/MapEntryLite$b;

    move-result-object p2

    invoke-interface {p5, p1, p2, p4}, Lcom/google/protobuf/j1;->readMap(Ljava/util/Map;Lcom/google/protobuf/MapEntryLite$b;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private mergeMessage(Ljava/lang/Object;Ljava/lang/Object;I)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)V"
        }
    .end annotation

    invoke-direct {p0, p2, p3}, Lcom/google/protobuf/t0;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-direct {p0, p3}, Lcom/google/protobuf/t0;->typeAndOffsetAt(I)I

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v0

    sget-object v2, Lcom/google/protobuf/t0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v2, p2, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_52

    invoke-direct {p0, p3}, Lcom/google/protobuf/t0;->getMessageFieldSchema(I)Lcom/google/protobuf/l1;

    move-result-object p2

    invoke-direct {p0, p1, p3}, Lcom/google/protobuf/t0;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-nez v4, :cond_39

    invoke-static {v3}, Lcom/google/protobuf/t0;->isMutable(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2b

    invoke-virtual {v2, p1, v0, v1, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_35

    :cond_2b
    invoke-interface {p2}, Lcom/google/protobuf/l1;->newInstance()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p2, v4, v3}, Lcom/google/protobuf/l1;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, p1, v0, v1, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_35
    invoke-direct {p0, p1, p3}, Lcom/google/protobuf/t0;->setFieldPresent(Ljava/lang/Object;I)V

    return-void

    :cond_39
    invoke-virtual {v2, p1, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3}, Lcom/google/protobuf/t0;->isMutable(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4e

    invoke-interface {p2}, Lcom/google/protobuf/l1;->newInstance()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p2, v4, p3}, Lcom/google/protobuf/l1;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, p1, v0, v1, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object p3, v4

    :cond_4e
    invoke-interface {p2, p3, v3}, Lcom/google/protobuf/l1;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_52
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Source subfield "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p3}, Lcom/google/protobuf/t0;->numberAt(I)I

    move-result p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " is present but null: "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private mergeOneofMessage(Ljava/lang/Object;Ljava/lang/Object;I)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)V"
        }
    .end annotation

    invoke-direct {p0, p3}, Lcom/google/protobuf/t0;->numberAt(I)I

    move-result v0

    invoke-direct {p0, p2, v0, p3}, Lcom/google/protobuf/t0;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v1

    if-nez v1, :cond_b

    return-void

    :cond_b
    invoke-direct {p0, p3}, Lcom/google/protobuf/t0;->typeAndOffsetAt(I)I

    move-result v1

    invoke-static {v1}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v1

    sget-object v3, Lcom/google/protobuf/t0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v3, p2, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_56

    invoke-direct {p0, p3}, Lcom/google/protobuf/t0;->getMessageFieldSchema(I)Lcom/google/protobuf/l1;

    move-result-object p2

    invoke-direct {p0, p1, v0, p3}, Lcom/google/protobuf/t0;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v5

    if-nez v5, :cond_3d

    invoke-static {v4}, Lcom/google/protobuf/t0;->isMutable(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2f

    invoke-virtual {v3, p1, v1, v2, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_39

    :cond_2f
    invoke-interface {p2}, Lcom/google/protobuf/l1;->newInstance()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p2, v5, v4}, Lcom/google/protobuf/l1;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, p1, v1, v2, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_39
    invoke-direct {p0, p1, v0, p3}, Lcom/google/protobuf/t0;->setOneofPresent(Ljava/lang/Object;II)V

    return-void

    :cond_3d
    invoke-virtual {v3, p1, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3}, Lcom/google/protobuf/t0;->isMutable(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_52

    invoke-interface {p2}, Lcom/google/protobuf/l1;->newInstance()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0, p3}, Lcom/google/protobuf/l1;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, p1, v1, v2, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object p3, v0

    :cond_52
    invoke-interface {p2, p3, v4}, Lcom/google/protobuf/l1;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_56
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Source subfield "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p3}, Lcom/google/protobuf/t0;->numberAt(I)I

    move-result p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " is present but null: "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private mergeSingleField(Ljava/lang/Object;Ljava/lang/Object;I)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)V"
        }
    .end annotation

    invoke-direct {p0, p3}, Lcom/google/protobuf/t0;->typeAndOffsetAt(I)I

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v1

    invoke-direct {p0, p3}, Lcom/google/protobuf/t0;->numberAt(I)I

    move-result v3

    invoke-static {v0}, Lcom/google/protobuf/t0;->type(I)I

    move-result v0

    packed-switch v0, :pswitch_data_174

    goto/16 :goto_173

    :pswitch_15
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/t0;->mergeOneofMessage(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_173

    :pswitch_1a
    invoke-direct {p0, p2, v3, p3}, Lcom/google/protobuf/t0;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_173

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/b2;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, v1, v2, p2}, Lcom/google/protobuf/b2;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, v3, p3}, Lcom/google/protobuf/t0;->setOneofPresent(Ljava/lang/Object;II)V

    goto/16 :goto_173

    :pswitch_2c
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/t0;->mergeOneofMessage(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_173

    :pswitch_31
    invoke-direct {p0, p2, v3, p3}, Lcom/google/protobuf/t0;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_173

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/b2;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, v1, v2, p2}, Lcom/google/protobuf/b2;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, v3, p3}, Lcom/google/protobuf/t0;->setOneofPresent(Ljava/lang/Object;II)V

    goto/16 :goto_173

    :pswitch_43
    iget-object p3, p0, Lcom/google/protobuf/t0;->mapFieldSchema:Lcom/google/protobuf/l0;

    invoke-static {p3, p1, p2, v1, v2}, Lcom/google/protobuf/SchemaUtil;->mergeMap(Lcom/google/protobuf/l0;Ljava/lang/Object;Ljava/lang/Object;J)V

    goto/16 :goto_173

    :pswitch_4a
    iget-object p3, p0, Lcom/google/protobuf/t0;->listFieldSchema:Lcom/google/protobuf/i0;

    invoke-virtual {p3, p1, p2, v1, v2}, Lcom/google/protobuf/i0;->mergeListsAt(Ljava/lang/Object;Ljava/lang/Object;J)V

    goto/16 :goto_173

    :pswitch_51
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/t0;->mergeMessage(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_173

    :pswitch_56
    invoke-direct {p0, p2, p3}, Lcom/google/protobuf/t0;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_173

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/b2;->getLong(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {p1, v1, v2, v3, v4}, Lcom/google/protobuf/b2;->putLong(Ljava/lang/Object;JJ)V

    invoke-direct {p0, p1, p3}, Lcom/google/protobuf/t0;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_173

    :pswitch_68
    invoke-direct {p0, p2, p3}, Lcom/google/protobuf/t0;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_173

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/b2;->getInt(Ljava/lang/Object;J)I

    move-result p2

    invoke-static {p1, v1, v2, p2}, Lcom/google/protobuf/b2;->putInt(Ljava/lang/Object;JI)V

    invoke-direct {p0, p1, p3}, Lcom/google/protobuf/t0;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_173

    :pswitch_7a
    invoke-direct {p0, p2, p3}, Lcom/google/protobuf/t0;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_173

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/b2;->getLong(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {p1, v1, v2, v3, v4}, Lcom/google/protobuf/b2;->putLong(Ljava/lang/Object;JJ)V

    invoke-direct {p0, p1, p3}, Lcom/google/protobuf/t0;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_173

    :pswitch_8c
    invoke-direct {p0, p2, p3}, Lcom/google/protobuf/t0;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_173

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/b2;->getInt(Ljava/lang/Object;J)I

    move-result p2

    invoke-static {p1, v1, v2, p2}, Lcom/google/protobuf/b2;->putInt(Ljava/lang/Object;JI)V

    invoke-direct {p0, p1, p3}, Lcom/google/protobuf/t0;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_173

    :pswitch_9e
    invoke-direct {p0, p2, p3}, Lcom/google/protobuf/t0;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_173

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/b2;->getInt(Ljava/lang/Object;J)I

    move-result p2

    invoke-static {p1, v1, v2, p2}, Lcom/google/protobuf/b2;->putInt(Ljava/lang/Object;JI)V

    invoke-direct {p0, p1, p3}, Lcom/google/protobuf/t0;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_173

    :pswitch_b0
    invoke-direct {p0, p2, p3}, Lcom/google/protobuf/t0;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_173

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/b2;->getInt(Ljava/lang/Object;J)I

    move-result p2

    invoke-static {p1, v1, v2, p2}, Lcom/google/protobuf/b2;->putInt(Ljava/lang/Object;JI)V

    invoke-direct {p0, p1, p3}, Lcom/google/protobuf/t0;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_173

    :pswitch_c2
    invoke-direct {p0, p2, p3}, Lcom/google/protobuf/t0;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_173

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/b2;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, v1, v2, p2}, Lcom/google/protobuf/b2;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, p3}, Lcom/google/protobuf/t0;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_173

    :pswitch_d4
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/t0;->mergeMessage(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_173

    :pswitch_d9
    invoke-direct {p0, p2, p3}, Lcom/google/protobuf/t0;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_173

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/b2;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, v1, v2, p2}, Lcom/google/protobuf/b2;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, p3}, Lcom/google/protobuf/t0;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_173

    :pswitch_eb
    invoke-direct {p0, p2, p3}, Lcom/google/protobuf/t0;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_173

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/b2;->getBoolean(Ljava/lang/Object;J)Z

    move-result p2

    invoke-static {p1, v1, v2, p2}, Lcom/google/protobuf/b2;->putBoolean(Ljava/lang/Object;JZ)V

    invoke-direct {p0, p1, p3}, Lcom/google/protobuf/t0;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_173

    :pswitch_fd
    invoke-direct {p0, p2, p3}, Lcom/google/protobuf/t0;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_173

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/b2;->getInt(Ljava/lang/Object;J)I

    move-result p2

    invoke-static {p1, v1, v2, p2}, Lcom/google/protobuf/b2;->putInt(Ljava/lang/Object;JI)V

    invoke-direct {p0, p1, p3}, Lcom/google/protobuf/t0;->setFieldPresent(Ljava/lang/Object;I)V

    goto :goto_173

    :pswitch_10e
    invoke-direct {p0, p2, p3}, Lcom/google/protobuf/t0;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_173

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/b2;->getLong(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {p1, v1, v2, v3, v4}, Lcom/google/protobuf/b2;->putLong(Ljava/lang/Object;JJ)V

    invoke-direct {p0, p1, p3}, Lcom/google/protobuf/t0;->setFieldPresent(Ljava/lang/Object;I)V

    goto :goto_173

    :pswitch_11f
    invoke-direct {p0, p2, p3}, Lcom/google/protobuf/t0;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_173

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/b2;->getInt(Ljava/lang/Object;J)I

    move-result p2

    invoke-static {p1, v1, v2, p2}, Lcom/google/protobuf/b2;->putInt(Ljava/lang/Object;JI)V

    invoke-direct {p0, p1, p3}, Lcom/google/protobuf/t0;->setFieldPresent(Ljava/lang/Object;I)V

    goto :goto_173

    :pswitch_130
    invoke-direct {p0, p2, p3}, Lcom/google/protobuf/t0;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_173

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/b2;->getLong(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {p1, v1, v2, v3, v4}, Lcom/google/protobuf/b2;->putLong(Ljava/lang/Object;JJ)V

    invoke-direct {p0, p1, p3}, Lcom/google/protobuf/t0;->setFieldPresent(Ljava/lang/Object;I)V

    goto :goto_173

    :pswitch_141
    invoke-direct {p0, p2, p3}, Lcom/google/protobuf/t0;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_173

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/b2;->getLong(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {p1, v1, v2, v3, v4}, Lcom/google/protobuf/b2;->putLong(Ljava/lang/Object;JJ)V

    invoke-direct {p0, p1, p3}, Lcom/google/protobuf/t0;->setFieldPresent(Ljava/lang/Object;I)V

    goto :goto_173

    :pswitch_152
    invoke-direct {p0, p2, p3}, Lcom/google/protobuf/t0;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_173

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/b2;->getFloat(Ljava/lang/Object;J)F

    move-result p2

    invoke-static {p1, v1, v2, p2}, Lcom/google/protobuf/b2;->putFloat(Ljava/lang/Object;JF)V

    invoke-direct {p0, p1, p3}, Lcom/google/protobuf/t0;->setFieldPresent(Ljava/lang/Object;I)V

    goto :goto_173

    :pswitch_163
    invoke-direct {p0, p2, p3}, Lcom/google/protobuf/t0;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_173

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/b2;->getDouble(Ljava/lang/Object;J)D

    move-result-wide v3

    invoke-static {p1, v1, v2, v3, v4}, Lcom/google/protobuf/b2;->putDouble(Ljava/lang/Object;JD)V

    invoke-direct {p0, p1, p3}, Lcom/google/protobuf/t0;->setFieldPresent(Ljava/lang/Object;I)V

    :cond_173
    :goto_173
    return-void

    :pswitch_data_174
    .packed-switch 0x0
        :pswitch_163
        :pswitch_152
        :pswitch_141
        :pswitch_130
        :pswitch_11f
        :pswitch_10e
        :pswitch_fd
        :pswitch_eb
        :pswitch_d9
        :pswitch_d4
        :pswitch_c2
        :pswitch_b0
        :pswitch_9e
        :pswitch_8c
        :pswitch_7a
        :pswitch_68
        :pswitch_56
        :pswitch_51
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_43
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_2c
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_15
    .end packed-switch
.end method

.method private mutableMessageFieldForMerge(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/google/protobuf/t0;->getMessageFieldSchema(I)Lcom/google/protobuf/l1;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/google/protobuf/t0;->typeAndOffsetAt(I)I

    move-result v1

    invoke-static {v1}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v1

    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/t0;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result p2

    if-nez p2, :cond_17

    invoke-interface {v0}, Lcom/google/protobuf/l1;->newInstance()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_17
    sget-object p2, Lcom/google/protobuf/t0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {p2, p1, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/google/protobuf/t0;->isMutable(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_24

    return-object p1

    :cond_24
    invoke-interface {v0}, Lcom/google/protobuf/l1;->newInstance()Ljava/lang/Object;

    move-result-object p2

    if-eqz p1, :cond_2d

    invoke-interface {v0, p2, p1}, Lcom/google/protobuf/l1;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2d
    return-object p2
.end method

.method private mutableOneofMessageFieldForMerge(Ljava/lang/Object;II)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-direct {p0, p3}, Lcom/google/protobuf/t0;->getMessageFieldSchema(I)Lcom/google/protobuf/l1;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/t0;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result p2

    if-nez p2, :cond_f

    invoke-interface {v0}, Lcom/google/protobuf/l1;->newInstance()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_f
    sget-object p2, Lcom/google/protobuf/t0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-direct {p0, p3}, Lcom/google/protobuf/t0;->typeAndOffsetAt(I)I

    move-result p3

    invoke-static {p3}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v1

    invoke-virtual {p2, p1, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/google/protobuf/t0;->isMutable(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_24

    return-object p1

    :cond_24
    invoke-interface {v0}, Lcom/google/protobuf/l1;->newInstance()Ljava/lang/Object;

    move-result-object p2

    if-eqz p1, :cond_2d

    invoke-interface {v0, p2, p1}, Lcom/google/protobuf/l1;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2d
    return-object p2
.end method

.method static newSchema(Ljava/lang/Class;Lcom/google/protobuf/o0;Lcom/google/protobuf/z0;Lcom/google/protobuf/i0;Lcom/google/protobuf/y1;Lcom/google/protobuf/u;Lcom/google/protobuf/l0;)Lcom/google/protobuf/t0;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/google/protobuf/o0;",
            "Lcom/google/protobuf/z0;",
            "Lcom/google/protobuf/i0;",
            "Lcom/google/protobuf/y1<",
            "**>;",
            "Lcom/google/protobuf/u<",
            "*>;",
            "Lcom/google/protobuf/l0;",
            ")",
            "Lcom/google/protobuf/t0<",
            "TT;>;"
        }
    .end annotation

    instance-of p0, p1, Lcom/google/protobuf/i1;

    if-eqz p0, :cond_11

    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/i1;

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/t0;->newSchemaForRawMessageInfo(Lcom/google/protobuf/i1;Lcom/google/protobuf/z0;Lcom/google/protobuf/i0;Lcom/google/protobuf/y1;Lcom/google/protobuf/u;Lcom/google/protobuf/l0;)Lcom/google/protobuf/t0;

    move-result-object p0

    return-object p0

    :cond_11
    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/StructuralMessageInfo;

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/t0;->newSchemaForMessageInfo(Lcom/google/protobuf/StructuralMessageInfo;Lcom/google/protobuf/z0;Lcom/google/protobuf/i0;Lcom/google/protobuf/y1;Lcom/google/protobuf/u;Lcom/google/protobuf/l0;)Lcom/google/protobuf/t0;

    move-result-object p0

    return-object p0
.end method

.method static newSchemaForMessageInfo(Lcom/google/protobuf/StructuralMessageInfo;Lcom/google/protobuf/z0;Lcom/google/protobuf/i0;Lcom/google/protobuf/y1;Lcom/google/protobuf/u;Lcom/google/protobuf/l0;)Lcom/google/protobuf/t0;
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/StructuralMessageInfo;",
            "Lcom/google/protobuf/z0;",
            "Lcom/google/protobuf/i0;",
            "Lcom/google/protobuf/y1<",
            "**>;",
            "Lcom/google/protobuf/u<",
            "*>;",
            "Lcom/google/protobuf/l0;",
            ")",
            "Lcom/google/protobuf/t0<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual/range {p0 .. p0}, Lcom/google/protobuf/StructuralMessageInfo;->getSyntax()Lcom/google/protobuf/ProtoSyntax;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/ProtoSyntax;->PROTO3:Lcom/google/protobuf/ProtoSyntax;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_c

    const/4 v10, 0x1

    goto :goto_d

    :cond_c
    const/4 v10, 0x0

    :goto_d
    invoke-virtual/range {p0 .. p0}, Lcom/google/protobuf/StructuralMessageInfo;->getFields()[Lcom/google/protobuf/FieldInfo;

    move-result-object v0

    array-length v1, v0

    if-nez v1, :cond_17

    const/4 v7, 0x0

    const/4 v8, 0x0

    goto :goto_27

    :cond_17
    aget-object v1, v0, v3

    invoke-virtual {v1}, Lcom/google/protobuf/FieldInfo;->getFieldNumber()I

    move-result v1

    array-length v4, v0

    sub-int/2addr v4, v2

    aget-object v2, v0, v4

    invoke-virtual {v2}, Lcom/google/protobuf/FieldInfo;->getFieldNumber()I

    move-result v2

    move v7, v1

    move v8, v2

    :goto_27
    array-length v1, v0

    mul-int/lit8 v2, v1, 0x3

    new-array v5, v2, [I

    mul-int/lit8 v1, v1, 0x2

    new-array v6, v1, [Ljava/lang/Object;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v9, 0x0

    :goto_34
    const/16 v11, 0x31

    const/16 v12, 0x12

    if-ge v2, v1, :cond_60

    aget-object v13, v0, v2

    invoke-virtual {v13}, Lcom/google/protobuf/FieldInfo;->getType()Lcom/google/protobuf/FieldType;

    move-result-object v14

    sget-object v15, Lcom/google/protobuf/FieldType;->MAP:Lcom/google/protobuf/FieldType;

    if-ne v14, v15, :cond_47

    add-int/lit8 v4, v4, 0x1

    goto :goto_5d

    :cond_47
    invoke-virtual {v13}, Lcom/google/protobuf/FieldInfo;->getType()Lcom/google/protobuf/FieldType;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/protobuf/FieldType;->id()I

    move-result v14

    if-lt v14, v12, :cond_5d

    invoke-virtual {v13}, Lcom/google/protobuf/FieldInfo;->getType()Lcom/google/protobuf/FieldType;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/protobuf/FieldType;->id()I

    move-result v12

    if-gt v12, v11, :cond_5d

    add-int/lit8 v9, v9, 0x1

    :cond_5d
    :goto_5d
    add-int/lit8 v2, v2, 0x1

    goto :goto_34

    :cond_60
    const/4 v1, 0x0

    if-lez v4, :cond_66

    new-array v2, v4, [I

    goto :goto_67

    :cond_66
    move-object v2, v1

    :goto_67
    if-lez v9, :cond_6b

    new-array v1, v9, [I

    :cond_6b
    invoke-virtual/range {p0 .. p0}, Lcom/google/protobuf/StructuralMessageInfo;->getCheckInitialized()[I

    move-result-object v4

    if-nez v4, :cond_73

    sget-object v4, Lcom/google/protobuf/t0;->EMPTY_INT_ARRAY:[I

    :cond_73
    const/4 v9, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_79
    array-length v3, v0

    if-ge v9, v3, :cond_d3

    aget-object v3, v0, v9

    invoke-virtual {v3}, Lcom/google/protobuf/FieldInfo;->getFieldNumber()I

    move-result v11

    invoke-static {v3, v5, v13, v6}, Lcom/google/protobuf/t0;->storeFieldData(Lcom/google/protobuf/FieldInfo;[II[Ljava/lang/Object;)V

    array-length v12, v4

    if-ge v14, v12, :cond_91

    aget v12, v4, v14

    if-ne v12, v11, :cond_91

    add-int/lit8 v11, v14, 0x1

    aput v13, v4, v14

    move v14, v11

    :cond_91
    invoke-virtual {v3}, Lcom/google/protobuf/FieldInfo;->getType()Lcom/google/protobuf/FieldType;

    move-result-object v11

    sget-object v12, Lcom/google/protobuf/FieldType;->MAP:Lcom/google/protobuf/FieldType;

    if-ne v11, v12, :cond_a1

    add-int/lit8 v3, v15, 0x1

    aput v13, v2, v15

    move v15, v3

    :cond_9e
    move/from16 v18, v13

    goto :goto_ca

    :cond_a1
    invoke-virtual {v3}, Lcom/google/protobuf/FieldInfo;->getType()Lcom/google/protobuf/FieldType;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/protobuf/FieldType;->id()I

    move-result v11

    const/16 v12, 0x12

    if-lt v11, v12, :cond_9e

    invoke-virtual {v3}, Lcom/google/protobuf/FieldInfo;->getType()Lcom/google/protobuf/FieldType;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/protobuf/FieldType;->id()I

    move-result v11

    const/16 v12, 0x31

    if-gt v11, v12, :cond_9e

    add-int/lit8 v11, v16, 0x1

    invoke-virtual {v3}, Lcom/google/protobuf/FieldInfo;->getField()Ljava/lang/reflect/Field;

    move-result-object v3

    move/from16 v18, v13

    invoke-static {v3}, Lcom/google/protobuf/b2;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v12

    long-to-int v3, v12

    aput v3, v1, v16

    move/from16 v16, v11

    :goto_ca
    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v13, v18, 0x3

    const/16 v11, 0x31

    const/16 v12, 0x12

    goto :goto_79

    :cond_d3
    if-nez v2, :cond_d7

    sget-object v2, Lcom/google/protobuf/t0;->EMPTY_INT_ARRAY:[I

    :cond_d7
    if-nez v1, :cond_db

    sget-object v1, Lcom/google/protobuf/t0;->EMPTY_INT_ARRAY:[I

    :cond_db
    array-length v0, v4

    array-length v3, v2

    add-int/2addr v0, v3

    array-length v3, v1

    add-int/2addr v0, v3

    new-array v12, v0, [I

    array-length v0, v4

    const/4 v3, 0x0

    invoke-static {v4, v3, v12, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v4

    array-length v9, v2

    invoke-static {v2, v3, v12, v0, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v4

    array-length v9, v2

    add-int/2addr v0, v9

    array-length v9, v1

    invoke-static {v1, v3, v12, v0, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v0, Lcom/google/protobuf/t0;

    invoke-virtual/range {p0 .. p0}, Lcom/google/protobuf/StructuralMessageInfo;->getDefaultInstance()Lcom/google/protobuf/q0;

    move-result-object v9

    const/4 v11, 0x1

    array-length v13, v4

    array-length v1, v4

    array-length v2, v2

    add-int v14, v1, v2

    move-object v4, v0

    move-object/from16 v15, p1

    move-object/from16 v16, p2

    move-object/from16 v17, p3

    move-object/from16 v18, p4

    move-object/from16 v19, p5

    invoke-direct/range {v4 .. v19}, Lcom/google/protobuf/t0;-><init>([I[Ljava/lang/Object;IILcom/google/protobuf/q0;ZZ[IIILcom/google/protobuf/z0;Lcom/google/protobuf/i0;Lcom/google/protobuf/y1;Lcom/google/protobuf/u;Lcom/google/protobuf/l0;)V

    return-object v0
.end method

.method static newSchemaForRawMessageInfo(Lcom/google/protobuf/i1;Lcom/google/protobuf/z0;Lcom/google/protobuf/i0;Lcom/google/protobuf/y1;Lcom/google/protobuf/u;Lcom/google/protobuf/l0;)Lcom/google/protobuf/t0;
    .registers 40
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/i1;",
            "Lcom/google/protobuf/z0;",
            "Lcom/google/protobuf/i0;",
            "Lcom/google/protobuf/y1<",
            "**>;",
            "Lcom/google/protobuf/u<",
            "*>;",
            "Lcom/google/protobuf/l0;",
            ")",
            "Lcom/google/protobuf/t0<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual/range {p0 .. p0}, Lcom/google/protobuf/i1;->getSyntax()Lcom/google/protobuf/ProtoSyntax;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/ProtoSyntax;->PROTO3:Lcom/google/protobuf/ProtoSyntax;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_b

    const/4 v10, 0x1

    goto :goto_c

    :cond_b
    const/4 v10, 0x0

    :goto_c
    invoke-virtual/range {p0 .. p0}, Lcom/google/protobuf/i1;->getStringInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const v5, 0xd800

    if-lt v4, v5, :cond_28

    const/4 v4, 0x1

    :goto_1e
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_29

    move v4, v6

    goto :goto_1e

    :cond_28
    const/4 v6, 0x1

    :cond_29
    add-int/lit8 v4, v6, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-lt v6, v5, :cond_48

    and-int/lit16 v6, v6, 0x1fff

    const/16 v8, 0xd

    :goto_35
    add-int/lit8 v9, v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_45

    and-int/lit16 v4, v4, 0x1fff

    shl-int/2addr v4, v8

    or-int/2addr v6, v4

    add-int/lit8 v8, v8, 0xd

    move v4, v9

    goto :goto_35

    :cond_45
    shl-int/2addr v4, v8

    or-int/2addr v6, v4

    move v4, v9

    :cond_48
    if-nez v6, :cond_57

    sget-object v6, Lcom/google/protobuf/t0;->EMPTY_INT_ARRAY:[I

    move-object v13, v6

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    goto/16 :goto_161

    :cond_57
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_76

    and-int/lit16 v4, v4, 0x1fff

    const/16 v8, 0xd

    :goto_63
    add-int/lit8 v9, v6, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-lt v6, v5, :cond_73

    and-int/lit16 v6, v6, 0x1fff

    shl-int/2addr v6, v8

    or-int/2addr v4, v6

    add-int/lit8 v8, v8, 0xd

    move v6, v9

    goto :goto_63

    :cond_73
    shl-int/2addr v6, v8

    or-int/2addr v4, v6

    move v6, v9

    :cond_76
    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-lt v6, v5, :cond_95

    and-int/lit16 v6, v6, 0x1fff

    const/16 v9, 0xd

    :goto_82
    add-int/lit8 v11, v8, 0x1

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v5, :cond_92

    and-int/lit16 v8, v8, 0x1fff

    shl-int/2addr v8, v9

    or-int/2addr v6, v8

    add-int/lit8 v9, v9, 0xd

    move v8, v11

    goto :goto_82

    :cond_92
    shl-int/2addr v8, v9

    or-int/2addr v6, v8

    move v8, v11

    :cond_95
    add-int/lit8 v9, v8, 0x1

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v5, :cond_b4

    and-int/lit16 v8, v8, 0x1fff

    const/16 v11, 0xd

    :goto_a1
    add-int/lit8 v12, v9, 0x1

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v5, :cond_b1

    and-int/lit16 v9, v9, 0x1fff

    shl-int/2addr v9, v11

    or-int/2addr v8, v9

    add-int/lit8 v11, v11, 0xd

    move v9, v12

    goto :goto_a1

    :cond_b1
    shl-int/2addr v9, v11

    or-int/2addr v8, v9

    move v9, v12

    :cond_b4
    add-int/lit8 v11, v9, 0x1

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v5, :cond_d3

    and-int/lit16 v9, v9, 0x1fff

    const/16 v12, 0xd

    :goto_c0
    add-int/lit8 v13, v11, 0x1

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v5, :cond_d0

    and-int/lit16 v11, v11, 0x1fff

    shl-int/2addr v11, v12

    or-int/2addr v9, v11

    add-int/lit8 v12, v12, 0xd

    move v11, v13

    goto :goto_c0

    :cond_d0
    shl-int/2addr v11, v12

    or-int/2addr v9, v11

    move v11, v13

    :cond_d3
    add-int/lit8 v12, v11, 0x1

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v5, :cond_f2

    and-int/lit16 v11, v11, 0x1fff

    const/16 v13, 0xd

    :goto_df
    add-int/lit8 v14, v12, 0x1

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v5, :cond_ef

    and-int/lit16 v12, v12, 0x1fff

    shl-int/2addr v12, v13

    or-int/2addr v11, v12

    add-int/lit8 v13, v13, 0xd

    move v12, v14

    goto :goto_df

    :cond_ef
    shl-int/2addr v12, v13

    or-int/2addr v11, v12

    move v12, v14

    :cond_f2
    add-int/lit8 v13, v12, 0x1

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v5, :cond_111

    and-int/lit16 v12, v12, 0x1fff

    const/16 v14, 0xd

    :goto_fe
    add-int/lit8 v15, v13, 0x1

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v5, :cond_10e

    and-int/lit16 v13, v13, 0x1fff

    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    add-int/lit8 v14, v14, 0xd

    move v13, v15

    goto :goto_fe

    :cond_10e
    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    move v13, v15

    :cond_111
    add-int/lit8 v14, v13, 0x1

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v5, :cond_132

    and-int/lit16 v13, v13, 0x1fff

    const/16 v15, 0xd

    :goto_11d
    add-int/lit8 v16, v14, 0x1

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v5, :cond_12e

    and-int/lit16 v14, v14, 0x1fff

    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    add-int/lit8 v15, v15, 0xd

    move/from16 v14, v16

    goto :goto_11d

    :cond_12e
    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    move/from16 v14, v16

    :cond_132
    add-int/lit8 v15, v14, 0x1

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v5, :cond_155

    and-int/lit16 v14, v14, 0x1fff

    const/16 v16, 0xd

    :goto_13e
    add-int/lit8 v17, v15, 0x1

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v5, :cond_150

    and-int/lit16 v15, v15, 0x1fff

    shl-int v15, v15, v16

    or-int/2addr v14, v15

    add-int/lit8 v16, v16, 0xd

    move/from16 v15, v17

    goto :goto_13e

    :cond_150
    shl-int v15, v15, v16

    or-int/2addr v14, v15

    move/from16 v15, v17

    :cond_155
    add-int v16, v14, v12

    add-int v13, v16, v13

    new-array v13, v13, [I

    mul-int/lit8 v16, v4, 0x2

    add-int v16, v16, v6

    move v6, v4

    move v4, v15

    :goto_161
    sget-object v15, Lcom/google/protobuf/t0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual/range {p0 .. p0}, Lcom/google/protobuf/i1;->getObjects()[Ljava/lang/Object;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lcom/google/protobuf/i1;->getDefaultInstance()Lcom/google/protobuf/q0;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    mul-int/lit8 v7, v11, 0x3

    new-array v7, v7, [I

    mul-int/lit8 v11, v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    add-int v20, v14, v12

    move/from16 v22, v14

    move/from16 v23, v20

    const/4 v12, 0x0

    const/16 v21, 0x0

    :goto_180
    if-ge v4, v1, :cond_3c0

    add-int/lit8 v24, v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_1a8

    and-int/lit16 v4, v4, 0x1fff

    move/from16 v3, v24

    const/16 v24, 0xd

    :goto_190
    add-int/lit8 v26, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v5, :cond_1a2

    and-int/lit16 v3, v3, 0x1fff

    shl-int v3, v3, v24

    or-int/2addr v4, v3

    add-int/lit8 v24, v24, 0xd

    move/from16 v3, v26

    goto :goto_190

    :cond_1a2
    shl-int v3, v3, v24

    or-int/2addr v4, v3

    move/from16 v3, v26

    goto :goto_1aa

    :cond_1a8
    move/from16 v3, v24

    :goto_1aa
    add-int/lit8 v24, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v5, :cond_1d7

    and-int/lit16 v3, v3, 0x1fff

    move/from16 v5, v24

    const/16 v24, 0xd

    :goto_1b8
    add-int/lit8 v27, v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move/from16 v28, v1

    const v1, 0xd800

    if-lt v5, v1, :cond_1d1

    and-int/lit16 v1, v5, 0x1fff

    shl-int v1, v1, v24

    or-int/2addr v3, v1

    add-int/lit8 v24, v24, 0xd

    move/from16 v5, v27

    move/from16 v1, v28

    goto :goto_1b8

    :cond_1d1
    shl-int v1, v5, v24

    or-int/2addr v3, v1

    move/from16 v1, v27

    goto :goto_1db

    :cond_1d7
    move/from16 v28, v1

    move/from16 v1, v24

    :goto_1db
    and-int/lit16 v5, v3, 0xff

    move/from16 v24, v14

    and-int/lit16 v14, v3, 0x400

    if-eqz v14, :cond_1e8

    add-int/lit8 v14, v12, 0x1

    aput v21, v13, v12

    move v12, v14

    :cond_1e8
    const/16 v14, 0x33

    move/from16 v30, v12

    if-lt v5, v14, :cond_286

    add-int/lit8 v14, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const v12, 0xd800

    if-lt v1, v12, :cond_217

    and-int/lit16 v1, v1, 0x1fff

    const/16 v32, 0xd

    :goto_1fd
    add-int/lit8 v33, v14, 0x1

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v12, :cond_212

    and-int/lit16 v12, v14, 0x1fff

    shl-int v12, v12, v32

    or-int/2addr v1, v12

    add-int/lit8 v32, v32, 0xd

    move/from16 v14, v33

    const v12, 0xd800

    goto :goto_1fd

    :cond_212
    shl-int v12, v14, v32

    or-int/2addr v1, v12

    move/from16 v14, v33

    :cond_217
    add-int/lit8 v12, v5, -0x33

    move/from16 v32, v14

    const/16 v14, 0x9

    if-eq v12, v14, :cond_237

    const/16 v14, 0x11

    if-ne v12, v14, :cond_224

    goto :goto_237

    :cond_224
    const/16 v14, 0xc

    if-ne v12, v14, :cond_245

    if-nez v10, :cond_245

    div-int/lit8 v12, v21, 0x3

    mul-int/lit8 v12, v12, 0x2

    const/4 v14, 0x1

    add-int/2addr v12, v14

    add-int/lit8 v14, v16, 0x1

    aget-object v16, v17, v16

    aput-object v16, v11, v12

    goto :goto_243

    :cond_237
    :goto_237
    div-int/lit8 v12, v21, 0x3

    mul-int/lit8 v12, v12, 0x2

    const/4 v14, 0x1

    add-int/2addr v12, v14

    add-int/lit8 v14, v16, 0x1

    aget-object v16, v17, v16

    aput-object v16, v11, v12

    :goto_243
    move/from16 v16, v14

    :cond_245
    mul-int/lit8 v1, v1, 0x2

    aget-object v12, v17, v1

    instance-of v14, v12, Ljava/lang/reflect/Field;

    if-eqz v14, :cond_250

    check-cast v12, Ljava/lang/reflect/Field;

    goto :goto_258

    :cond_250
    check-cast v12, Ljava/lang/String;

    invoke-static {v2, v12}, Lcom/google/protobuf/t0;->reflectField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v12

    aput-object v12, v17, v1

    :goto_258
    move v14, v8

    move/from16 v33, v9

    invoke-virtual {v15, v12}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v8

    long-to-int v9, v8

    add-int/lit8 v1, v1, 0x1

    aget-object v8, v17, v1

    instance-of v12, v8, Ljava/lang/reflect/Field;

    if-eqz v12, :cond_26b

    check-cast v8, Ljava/lang/reflect/Field;

    goto :goto_273

    :cond_26b
    check-cast v8, Ljava/lang/String;

    invoke-static {v2, v8}, Lcom/google/protobuf/t0;->reflectField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    aput-object v8, v17, v1

    :goto_273
    move v1, v9

    invoke-virtual {v15, v8}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v8

    long-to-int v9, v8

    move-object/from16 v31, v0

    move v0, v10

    move-object v8, v11

    move/from16 v29, v32

    const/16 v25, 0x1

    move v10, v9

    move v9, v1

    const/4 v1, 0x0

    goto/16 :goto_388

    :cond_286
    move v14, v8

    move/from16 v33, v9

    add-int/lit8 v8, v16, 0x1

    aget-object v9, v17, v16

    check-cast v9, Ljava/lang/String;

    invoke-static {v2, v9}, Lcom/google/protobuf/t0;->reflectField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    const/16 v12, 0x9

    if-eq v5, v12, :cond_2fe

    const/16 v12, 0x11

    if-ne v5, v12, :cond_29c

    goto :goto_2fe

    :cond_29c
    const/16 v12, 0x1b

    if-eq v5, v12, :cond_2ed

    const/16 v12, 0x31

    if-ne v5, v12, :cond_2a5

    goto :goto_2ed

    :cond_2a5
    const/16 v12, 0xc

    if-eq v5, v12, :cond_2dc

    const/16 v12, 0x1e

    if-eq v5, v12, :cond_2dc

    const/16 v12, 0x2c

    if-ne v5, v12, :cond_2b2

    goto :goto_2dc

    :cond_2b2
    const/16 v12, 0x32

    if-ne v5, v12, :cond_2d2

    add-int/lit8 v12, v22, 0x1

    aput v21, v13, v22

    div-int/lit8 v22, v21, 0x3

    mul-int/lit8 v22, v22, 0x2

    add-int/lit8 v27, v8, 0x1

    aget-object v8, v17, v8

    aput-object v8, v11, v22

    and-int/lit16 v8, v3, 0x800

    if-eqz v8, :cond_2d5

    add-int/lit8 v22, v22, 0x1

    add-int/lit8 v8, v27, 0x1

    aget-object v27, v17, v27

    aput-object v27, v11, v22

    move/from16 v22, v12

    :cond_2d2
    const/16 v25, 0x1

    goto :goto_30c

    :cond_2d5
    move/from16 v22, v12

    move/from16 v12, v27

    const/16 v25, 0x1

    goto :goto_30d

    :cond_2dc
    :goto_2dc
    if-nez v10, :cond_2d2

    div-int/lit8 v12, v21, 0x3

    mul-int/lit8 v12, v12, 0x2

    const/16 v25, 0x1

    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v27, v8, 0x1

    aget-object v8, v17, v8

    aput-object v8, v11, v12

    goto :goto_2fb

    :cond_2ed
    :goto_2ed
    const/16 v25, 0x1

    div-int/lit8 v12, v21, 0x3

    mul-int/lit8 v12, v12, 0x2

    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v27, v8, 0x1

    aget-object v8, v17, v8

    aput-object v8, v11, v12

    :goto_2fb
    move/from16 v12, v27

    goto :goto_30d

    :cond_2fe
    :goto_2fe
    const/16 v25, 0x1

    div-int/lit8 v12, v21, 0x3

    mul-int/lit8 v12, v12, 0x2

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v27

    aput-object v27, v11, v12

    :goto_30c
    move v12, v8

    :goto_30d
    invoke-virtual {v15, v9}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v8

    long-to-int v9, v8

    and-int/lit16 v8, v3, 0x1000

    move/from16 v27, v12

    const/16 v12, 0x1000

    if-ne v8, v12, :cond_31c

    const/4 v8, 0x1

    goto :goto_31d

    :cond_31c
    const/4 v8, 0x0

    :goto_31d
    if-eqz v8, :cond_36e

    const/16 v8, 0x11

    if-gt v5, v8, :cond_36e

    add-int/lit8 v8, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const v12, 0xd800

    if-lt v1, v12, :cond_348

    and-int/lit16 v1, v1, 0x1fff

    const/16 v26, 0xd

    :goto_332
    add-int/lit8 v29, v8, 0x1

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v12, :cond_344

    and-int/lit16 v8, v8, 0x1fff

    shl-int v8, v8, v26

    or-int/2addr v1, v8

    add-int/lit8 v26, v26, 0xd

    move/from16 v8, v29

    goto :goto_332

    :cond_344
    shl-int v8, v8, v26

    or-int/2addr v1, v8

    goto :goto_34a

    :cond_348
    move/from16 v29, v8

    :goto_34a
    mul-int/lit8 v8, v6, 0x2

    div-int/lit8 v26, v1, 0x20

    add-int v8, v8, v26

    aget-object v12, v17, v8

    move-object/from16 v31, v0

    instance-of v0, v12, Ljava/lang/reflect/Field;

    if-eqz v0, :cond_35b

    check-cast v12, Ljava/lang/reflect/Field;

    goto :goto_363

    :cond_35b
    check-cast v12, Ljava/lang/String;

    invoke-static {v2, v12}, Lcom/google/protobuf/t0;->reflectField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v12

    aput-object v12, v17, v8

    :goto_363
    move v0, v10

    move-object v8, v11

    invoke-virtual {v15, v12}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v10

    long-to-int v11, v10

    rem-int/lit8 v1, v1, 0x20

    move v10, v11

    goto :goto_378

    :cond_36e
    move-object/from16 v31, v0

    move v0, v10

    move-object v8, v11

    const v10, 0xfffff

    move/from16 v29, v1

    const/4 v1, 0x0

    :goto_378
    const/16 v11, 0x12

    if-lt v5, v11, :cond_386

    const/16 v11, 0x31

    if-gt v5, v11, :cond_386

    add-int/lit8 v11, v23, 0x1

    aput v9, v13, v23

    move/from16 v23, v11

    :cond_386
    move/from16 v16, v27

    :goto_388
    add-int/lit8 v11, v21, 0x1

    aput v4, v7, v21

    add-int/lit8 v4, v11, 0x1

    and-int/lit16 v12, v3, 0x200

    if-eqz v12, :cond_395

    const/high16 v12, 0x20000000

    goto :goto_396

    :cond_395
    const/4 v12, 0x0

    :goto_396
    and-int/lit16 v3, v3, 0x100

    if-eqz v3, :cond_39d

    const/high16 v3, 0x10000000

    goto :goto_39e

    :cond_39d
    const/4 v3, 0x0

    :goto_39e
    or-int/2addr v3, v12

    shl-int/lit8 v5, v5, 0x14

    or-int/2addr v3, v5

    or-int/2addr v3, v9

    aput v3, v7, v11

    add-int/lit8 v21, v4, 0x1

    shl-int/lit8 v1, v1, 0x14

    or-int/2addr v1, v10

    aput v1, v7, v4

    move v10, v0

    move-object v11, v8

    move v8, v14

    move/from16 v14, v24

    move/from16 v1, v28

    move/from16 v4, v29

    move/from16 v12, v30

    move-object/from16 v0, v31

    move/from16 v9, v33

    const v5, 0xd800

    goto/16 :goto_180

    :cond_3c0
    move/from16 v33, v9

    move v0, v10

    move/from16 v24, v14

    move v14, v8

    move-object v8, v11

    new-instance v1, Lcom/google/protobuf/t0;

    invoke-virtual/range {p0 .. p0}, Lcom/google/protobuf/i1;->getDefaultInstance()Lcom/google/protobuf/q0;

    move-result-object v9

    const/4 v11, 0x0

    move-object v4, v1

    move-object v5, v7

    move-object v6, v8

    move v7, v14

    move/from16 v8, v33

    move-object v12, v13

    move/from16 v13, v24

    move/from16 v14, v20

    move-object/from16 v15, p1

    move-object/from16 v16, p2

    move-object/from16 v17, p3

    move-object/from16 v18, p4

    move-object/from16 v19, p5

    invoke-direct/range {v4 .. v19}, Lcom/google/protobuf/t0;-><init>([I[Ljava/lang/Object;IILcom/google/protobuf/q0;ZZ[IIILcom/google/protobuf/z0;Lcom/google/protobuf/i0;Lcom/google/protobuf/y1;Lcom/google/protobuf/u;Lcom/google/protobuf/l0;)V

    return-object v1
.end method

.method private numberAt(I)I
    .registers 3

    iget-object v0, p0, Lcom/google/protobuf/t0;->buffer:[I

    aget p1, v0, p1

    return p1
.end method

.method private static offset(I)J
    .registers 3

    const v0, 0xfffff

    and-int/2addr p0, v0

    int-to-long v0, p0

    return-wide v0
.end method

.method private static oneofBooleanAt(Ljava/lang/Object;J)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)Z"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/google/protobuf/b2;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static oneofDoubleAt(Ljava/lang/Object;J)D
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)D"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/google/protobuf/b2;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    return-wide p0
.end method

.method private static oneofFloatAt(Ljava/lang/Object;J)F
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)F"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/google/protobuf/b2;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method private static oneofIntAt(Ljava/lang/Object;J)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)I"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/google/protobuf/b2;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private static oneofLongAt(Ljava/lang/Object;J)J
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)J"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/google/protobuf/b2;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method private parseMapField(Ljava/lang/Object;[BIIIJLcom/google/protobuf/h$b;)I
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TT;[BIIIJ",
            "Lcom/google/protobuf/h$b;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v7, p0

    move-object v0, p1

    move-wide v1, p6

    sget-object v3, Lcom/google/protobuf/t0;->UNSAFE:Lsun/misc/Unsafe;

    move v4, p5

    invoke-direct {p0, p5}, Lcom/google/protobuf/t0;->getMapFieldDefaultEntry(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, p1, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    iget-object v6, v7, Lcom/google/protobuf/t0;->mapFieldSchema:Lcom/google/protobuf/l0;

    invoke-interface {v6, v5}, Lcom/google/protobuf/l0;->isImmutable(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_25

    iget-object v6, v7, Lcom/google/protobuf/t0;->mapFieldSchema:Lcom/google/protobuf/l0;

    invoke-interface {v6, v4}, Lcom/google/protobuf/l0;->newMapField(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iget-object v8, v7, Lcom/google/protobuf/t0;->mapFieldSchema:Lcom/google/protobuf/l0;

    invoke-interface {v8, v6, v5}, Lcom/google/protobuf/l0;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3, p1, v1, v2, v6}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v5, v6

    :cond_25
    iget-object v0, v7, Lcom/google/protobuf/t0;->mapFieldSchema:Lcom/google/protobuf/l0;

    invoke-interface {v0, v4}, Lcom/google/protobuf/l0;->forMapMetadata(Ljava/lang/Object;)Lcom/google/protobuf/MapEntryLite$b;

    move-result-object v4

    iget-object v0, v7, Lcom/google/protobuf/t0;->mapFieldSchema:Lcom/google/protobuf/l0;

    invoke-interface {v0, v5}, Lcom/google/protobuf/l0;->forMutableMapData(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v5

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move-object/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Lcom/google/protobuf/t0;->decodeMapEntry([BIILcom/google/protobuf/MapEntryLite$b;Ljava/util/Map;Lcom/google/protobuf/h$b;)I

    move-result v0

    return v0
.end method

.method private parseOneofField(Ljava/lang/Object;[BIIIIIIIJILcom/google/protobuf/h$b;)I
    .registers 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIIIIIIIJI",
            "Lcom/google/protobuf/h$b;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v2, p5

    move/from16 v9, p6

    move/from16 v3, p7

    move-wide/from16 v6, p10

    move/from16 v10, p12

    move-object/from16 v8, p13

    sget-object v11, Lcom/google/protobuf/t0;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v12, v0, Lcom/google/protobuf/t0;->buffer:[I

    add-int/lit8 v13, v10, 0x2

    aget v12, v12, v13

    const v13, 0xfffff

    and-int/2addr v12, v13

    int-to-long v12, v12

    const/4 v14, 0x5

    const/4 v15, 0x2

    packed-switch p9, :pswitch_data_19c

    goto/16 :goto_199

    :pswitch_28
    const/4 v6, 0x3

    if-ne v3, v6, :cond_199

    invoke-direct {v0, v1, v9, v10}, Lcom/google/protobuf/t0;->mutableOneofMessageFieldForMerge(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v11

    and-int/lit8 v2, v2, -0x8

    or-int/lit8 v7, v2, 0x4

    invoke-direct {v0, v10}, Lcom/google/protobuf/t0;->getMessageFieldSchema(I)Lcom/google/protobuf/l1;

    move-result-object v3

    move-object v2, v11

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v8, p13

    invoke-static/range {v2 .. v8}, Lcom/google/protobuf/h;->mergeGroupField(Ljava/lang/Object;Lcom/google/protobuf/l1;[BIIILcom/google/protobuf/h$b;)I

    move-result v2

    invoke-direct {v0, v1, v9, v10, v11}, Lcom/google/protobuf/t0;->storeOneofMessageField(Ljava/lang/Object;IILjava/lang/Object;)V

    goto/16 :goto_19a

    :pswitch_49
    if-nez v3, :cond_199

    invoke-static {v4, v5, v8}, Lcom/google/protobuf/h;->decodeVarint64([BILcom/google/protobuf/h$b;)I

    move-result v2

    iget-wide v3, v8, Lcom/google/protobuf/h$b;->long1:J

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedInputStream;->decodeZigZag64(J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v11, v1, v6, v7, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v11, v1, v12, v13, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_19a

    :pswitch_61
    if-nez v3, :cond_199

    invoke-static {v4, v5, v8}, Lcom/google/protobuf/h;->decodeVarint32([BILcom/google/protobuf/h$b;)I

    move-result v2

    iget v3, v8, Lcom/google/protobuf/h$b;->int1:I

    invoke-static {v3}, Lcom/google/protobuf/CodedInputStream;->decodeZigZag32(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v11, v1, v6, v7, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v11, v1, v12, v13, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_19a

    :pswitch_79
    if-nez v3, :cond_199

    invoke-static {v4, v5, v8}, Lcom/google/protobuf/h;->decodeVarint32([BILcom/google/protobuf/h$b;)I

    move-result v3

    iget v4, v8, Lcom/google/protobuf/h$b;->int1:I

    invoke-direct {v0, v10}, Lcom/google/protobuf/t0;->getEnumFieldVerifier(I)Lcom/google/protobuf/Internal$e;

    move-result-object v5

    if-eqz v5, :cond_9b

    invoke-interface {v5, v4}, Lcom/google/protobuf/Internal$e;->isInRange(I)Z

    move-result v5

    if-eqz v5, :cond_8e

    goto :goto_9b

    :cond_8e
    invoke-static/range {p1 .. p1}, Lcom/google/protobuf/t0;->getMutableUnknownFields(Ljava/lang/Object;)Lcom/google/protobuf/UnknownFieldSetLite;

    move-result-object v1

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/google/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    goto :goto_a5

    :cond_9b
    :goto_9b
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v1, v6, v7, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v11, v1, v12, v13, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_a5
    move v2, v3

    goto/16 :goto_19a

    :pswitch_a8
    if-ne v3, v15, :cond_199

    invoke-static {v4, v5, v8}, Lcom/google/protobuf/h;->decodeBytes([BILcom/google/protobuf/h$b;)I

    move-result v2

    iget-object v3, v8, Lcom/google/protobuf/h$b;->object1:Ljava/lang/Object;

    invoke-virtual {v11, v1, v6, v7, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v11, v1, v12, v13, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_19a

    :pswitch_b8
    if-ne v3, v15, :cond_199

    invoke-direct {v0, v1, v9, v10}, Lcom/google/protobuf/t0;->mutableOneofMessageFieldForMerge(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v11

    invoke-direct {v0, v10}, Lcom/google/protobuf/t0;->getMessageFieldSchema(I)Lcom/google/protobuf/l1;

    move-result-object v3

    move-object v2, v11

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p13

    invoke-static/range {v2 .. v7}, Lcom/google/protobuf/h;->mergeMessageField(Ljava/lang/Object;Lcom/google/protobuf/l1;[BIILcom/google/protobuf/h$b;)I

    move-result v2

    invoke-direct {v0, v1, v9, v10, v11}, Lcom/google/protobuf/t0;->storeOneofMessageField(Ljava/lang/Object;IILjava/lang/Object;)V

    goto/16 :goto_19a

    :pswitch_d4
    if-ne v3, v15, :cond_199

    invoke-static {v4, v5, v8}, Lcom/google/protobuf/h;->decodeVarint32([BILcom/google/protobuf/h$b;)I

    move-result v2

    iget v3, v8, Lcom/google/protobuf/h$b;->int1:I

    if-nez v3, :cond_e4

    const-string v3, ""

    invoke-virtual {v11, v1, v6, v7, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_103

    :cond_e4
    const/high16 v5, 0x20000000

    and-int v5, p8, v5

    if-eqz v5, :cond_f8

    add-int v5, v2, v3

    invoke-static {v4, v2, v5}, Lcom/google/protobuf/c2;->isValidUtf8([BII)Z

    move-result v5

    if-eqz v5, :cond_f3

    goto :goto_f8

    :cond_f3
    invoke-static {}, Lcom/google/protobuf/d0;->invalidUtf8()Lcom/google/protobuf/d0;

    move-result-object v1

    throw v1

    :cond_f8
    :goto_f8
    new-instance v5, Ljava/lang/String;

    sget-object v8, Lcom/google/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v5, v4, v2, v3, v8}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v11, v1, v6, v7, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/2addr v2, v3

    :goto_103
    invoke-virtual {v11, v1, v12, v13, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_19a

    :pswitch_108
    if-nez v3, :cond_199

    invoke-static {v4, v5, v8}, Lcom/google/protobuf/h;->decodeVarint64([BILcom/google/protobuf/h$b;)I

    move-result v2

    iget-wide v3, v8, Lcom/google/protobuf/h$b;->long1:J

    const-wide/16 v14, 0x0

    cmp-long v5, v3, v14

    if-eqz v5, :cond_118

    const/4 v15, 0x1

    goto :goto_119

    :cond_118
    const/4 v15, 0x0

    :goto_119
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v11, v1, v6, v7, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v11, v1, v12, v13, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_19a

    :pswitch_125
    if-ne v3, v14, :cond_199

    invoke-static/range {p2 .. p3}, Lcom/google/protobuf/h;->decodeFixed32([BI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v1, v6, v7, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v2, v5, 0x4

    invoke-virtual {v11, v1, v12, v13, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_19a

    :pswitch_138
    const/4 v2, 0x1

    if-ne v3, v2, :cond_199

    invoke-static/range {p2 .. p3}, Lcom/google/protobuf/h;->decodeFixed64([BI)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v11, v1, v6, v7, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v2, v5, 0x8

    invoke-virtual {v11, v1, v12, v13, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_19a

    :pswitch_14c
    if-nez v3, :cond_199

    invoke-static {v4, v5, v8}, Lcom/google/protobuf/h;->decodeVarint32([BILcom/google/protobuf/h$b;)I

    move-result v2

    iget v3, v8, Lcom/google/protobuf/h$b;->int1:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v11, v1, v6, v7, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v11, v1, v12, v13, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_19a

    :pswitch_15f
    if-nez v3, :cond_199

    invoke-static {v4, v5, v8}, Lcom/google/protobuf/h;->decodeVarint64([BILcom/google/protobuf/h$b;)I

    move-result v2

    iget-wide v3, v8, Lcom/google/protobuf/h$b;->long1:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v11, v1, v6, v7, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v11, v1, v12, v13, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_19a

    :pswitch_172
    if-ne v3, v14, :cond_199

    invoke-static/range {p2 .. p3}, Lcom/google/protobuf/h;->decodeFloat([BI)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v11, v1, v6, v7, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v2, v5, 0x4

    invoke-virtual {v11, v1, v12, v13, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_19a

    :pswitch_185
    const/4 v2, 0x1

    if-ne v3, v2, :cond_199

    invoke-static/range {p2 .. p3}, Lcom/google/protobuf/h;->decodeDouble([BI)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v11, v1, v6, v7, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v2, v5, 0x8

    invoke-virtual {v11, v1, v12, v13, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_19a

    :cond_199
    :goto_199
    move v2, v5

    :goto_19a
    return v2

    nop

    :pswitch_data_19c
    .packed-switch 0x33
        :pswitch_185
        :pswitch_172
        :pswitch_15f
        :pswitch_15f
        :pswitch_14c
        :pswitch_138
        :pswitch_125
        :pswitch_108
        :pswitch_d4
        :pswitch_b8
        :pswitch_a8
        :pswitch_14c
        :pswitch_79
        :pswitch_125
        :pswitch_138
        :pswitch_61
        :pswitch_49
        :pswitch_28
    .end packed-switch
.end method

.method private parseProto3Message(Ljava/lang/Object;[BIILcom/google/protobuf/h$b;)I
    .registers 36
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BII",
            "Lcom/google/protobuf/h$b;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    invoke-static/range {p1 .. p1}, Lcom/google/protobuf/t0;->checkMutable(Ljava/lang/Object;)V

    sget-object v9, Lcom/google/protobuf/t0;->UNSAFE:Lsun/misc/Unsafe;

    const/4 v10, -0x1

    const/16 v16, 0x0

    move/from16 v0, p3

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v6, 0x0

    const v7, 0xfffff

    :goto_1a
    if-ge v0, v13, :cond_2e2

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, v12, v0

    if-gez v0, :cond_2c

    invoke-static {v0, v12, v3, v11}, Lcom/google/protobuf/h;->decodeVarint32(I[BILcom/google/protobuf/h$b;)I

    move-result v0

    iget v3, v11, Lcom/google/protobuf/h$b;->int1:I

    move v4, v0

    move/from16 v17, v3

    goto :goto_2f

    :cond_2c
    move/from16 v17, v0

    move v4, v3

    :goto_2f
    ushr-int/lit8 v5, v17, 0x3

    and-int/lit8 v3, v17, 0x7

    if-le v5, v1, :cond_3c

    div-int/lit8 v2, v2, 0x3

    invoke-direct {v15, v5, v2}, Lcom/google/protobuf/t0;->positionForFieldNumber(II)I

    move-result v0

    goto :goto_40

    :cond_3c
    invoke-direct {v15, v5}, Lcom/google/protobuf/t0;->positionForFieldNumber(I)I

    move-result v0

    :goto_40
    move v2, v0

    if-ne v2, v10, :cond_4e

    move v2, v4

    move/from16 v19, v5

    move-object/from16 v28, v9

    const/16 v18, -0x1

    const/16 v20, 0x0

    goto/16 :goto_2bf

    :cond_4e
    iget-object v0, v15, Lcom/google/protobuf/t0;->buffer:[I

    add-int/lit8 v1, v2, 0x1

    aget v1, v0, v1

    invoke-static {v1}, Lcom/google/protobuf/t0;->type(I)I

    move-result v0

    move-object/from16 v18, v9

    invoke-static {v1}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v8

    const/16 v10, 0x11

    move/from16 p3, v5

    if-gt v0, v10, :cond_1c0

    iget-object v10, v15, Lcom/google/protobuf/t0;->buffer:[I

    add-int/lit8 v21, v2, 0x2

    aget v10, v10, v21

    ushr-int/lit8 v21, v10, 0x14

    const/4 v5, 0x1

    shl-int v21, v5, v21

    const v13, 0xfffff

    and-int/2addr v10, v13

    move/from16 v23, v1

    move/from16 v19, v2

    if-eq v10, v7, :cond_92

    if-eq v7, v13, :cond_82

    int-to-long v1, v7

    move-object/from16 v7, v18

    invoke-virtual {v7, v14, v1, v2, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_84

    :cond_82
    move-object/from16 v7, v18

    :goto_84
    if-eq v10, v13, :cond_8c

    int-to-long v1, v10

    invoke-virtual {v7, v14, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    move v6, v1

    :cond_8c
    move/from16 v29, v10

    move-object v10, v7

    move/from16 v7, v29

    goto :goto_94

    :cond_92
    move-object/from16 v10, v18

    :goto_94
    const/4 v1, 0x5

    packed-switch v0, :pswitch_data_300

    :cond_98
    move/from16 v13, v19

    move/from16 v19, p3

    goto/16 :goto_1b7

    :pswitch_9e
    if-nez v3, :cond_98

    invoke-static {v12, v4, v11}, Lcom/google/protobuf/h;->decodeVarint64([BILcom/google/protobuf/h$b;)I

    move-result v17

    iget-wide v0, v11, Lcom/google/protobuf/h$b;->long1:J

    invoke-static {v0, v1}, Lcom/google/protobuf/CodedInputStream;->decodeZigZag64(J)J

    move-result-wide v4

    move-object v0, v10

    move-object/from16 v1, p1

    move/from16 v13, v19

    move-wide v2, v8

    move/from16 v19, p3

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    goto/16 :goto_18d

    :pswitch_b7
    move/from16 v13, v19

    move/from16 v19, p3

    if-nez v3, :cond_1b7

    invoke-static {v12, v4, v11}, Lcom/google/protobuf/h;->decodeVarint32([BILcom/google/protobuf/h$b;)I

    move-result v0

    iget v1, v11, Lcom/google/protobuf/h$b;->int1:I

    invoke-static {v1}, Lcom/google/protobuf/CodedInputStream;->decodeZigZag32(I)I

    move-result v1

    invoke-virtual {v10, v14, v8, v9, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_1b4

    :pswitch_cc
    move/from16 v13, v19

    move/from16 v19, p3

    if-nez v3, :cond_1b7

    invoke-static {v12, v4, v11}, Lcom/google/protobuf/h;->decodeVarint32([BILcom/google/protobuf/h$b;)I

    move-result v0

    iget v1, v11, Lcom/google/protobuf/h$b;->int1:I

    invoke-virtual {v10, v14, v8, v9, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_1b4

    :pswitch_dd
    move/from16 v13, v19

    const/4 v0, 0x2

    move/from16 v19, p3

    if-ne v3, v0, :cond_1b7

    invoke-static {v12, v4, v11}, Lcom/google/protobuf/h;->decodeBytes([BILcom/google/protobuf/h$b;)I

    move-result v0

    iget-object v1, v11, Lcom/google/protobuf/h$b;->object1:Ljava/lang/Object;

    invoke-virtual {v10, v14, v8, v9, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_1b4

    :pswitch_ef
    move/from16 v13, v19

    const/4 v0, 0x2

    move/from16 v19, p3

    if-ne v3, v0, :cond_1b7

    invoke-direct {v15, v14, v13}, Lcom/google/protobuf/t0;->mutableMessageFieldForMerge(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v8

    invoke-direct {v15, v13}, Lcom/google/protobuf/t0;->getMessageFieldSchema(I)Lcom/google/protobuf/l1;

    move-result-object v1

    move-object v0, v8

    move-object/from16 v2, p2

    move v3, v4

    move/from16 v4, p4

    move-object/from16 v5, p5

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/h;->mergeMessageField(Ljava/lang/Object;Lcom/google/protobuf/l1;[BIILcom/google/protobuf/h$b;)I

    move-result v0

    invoke-direct {v15, v14, v13, v8}, Lcom/google/protobuf/t0;->storeMessageField(Ljava/lang/Object;ILjava/lang/Object;)V

    goto/16 :goto_1b4

    :pswitch_10f
    move/from16 v13, v19

    const/4 v0, 0x2

    move/from16 v19, p3

    if-ne v3, v0, :cond_1b7

    const/high16 v0, 0x20000000

    and-int v0, v23, v0

    if-nez v0, :cond_121

    invoke-static {v12, v4, v11}, Lcom/google/protobuf/h;->decodeString([BILcom/google/protobuf/h$b;)I

    move-result v0

    goto :goto_125

    :cond_121
    invoke-static {v12, v4, v11}, Lcom/google/protobuf/h;->decodeStringRequireUtf8([BILcom/google/protobuf/h$b;)I

    move-result v0

    :goto_125
    iget-object v1, v11, Lcom/google/protobuf/h$b;->object1:Ljava/lang/Object;

    invoke-virtual {v10, v14, v8, v9, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_1b4

    :pswitch_12c
    move/from16 v13, v19

    move/from16 v19, p3

    if-nez v3, :cond_1b7

    invoke-static {v12, v4, v11}, Lcom/google/protobuf/h;->decodeVarint64([BILcom/google/protobuf/h$b;)I

    move-result v0

    iget-wide v1, v11, Lcom/google/protobuf/h$b;->long1:J

    const-wide/16 v3, 0x0

    cmp-long v17, v1, v3

    if-eqz v17, :cond_13f

    goto :goto_140

    :cond_13f
    const/4 v5, 0x0

    :goto_140
    invoke-static {v14, v8, v9, v5}, Lcom/google/protobuf/b2;->putBoolean(Ljava/lang/Object;JZ)V

    goto/16 :goto_1b4

    :pswitch_145
    move/from16 v13, v19

    move/from16 v19, p3

    if-ne v3, v1, :cond_1b7

    invoke-static {v12, v4}, Lcom/google/protobuf/h;->decodeFixed32([BI)I

    move-result v0

    invoke-virtual {v10, v14, v8, v9, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_1a2

    :pswitch_153
    move/from16 v13, v19

    move/from16 v19, p3

    if-ne v3, v5, :cond_1b7

    invoke-static {v12, v4}, Lcom/google/protobuf/h;->decodeFixed64([BI)J

    move-result-wide v22

    move-object v0, v10

    move-object/from16 v1, p1

    move-wide v2, v8

    move v8, v4

    move-wide/from16 v4, v22

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    add-int/lit8 v0, v8, 0x8

    goto :goto_1b4

    :pswitch_16a
    move/from16 v13, v19

    move/from16 v19, p3

    if-nez v3, :cond_1b7

    invoke-static {v12, v4, v11}, Lcom/google/protobuf/h;->decodeVarint32([BILcom/google/protobuf/h$b;)I

    move-result v0

    iget v1, v11, Lcom/google/protobuf/h$b;->int1:I

    invoke-virtual {v10, v14, v8, v9, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_1b4

    :pswitch_17a
    move/from16 v13, v19

    move/from16 v19, p3

    if-nez v3, :cond_1b7

    invoke-static {v12, v4, v11}, Lcom/google/protobuf/h;->decodeVarint64([BILcom/google/protobuf/h$b;)I

    move-result v17

    iget-wide v4, v11, Lcom/google/protobuf/h$b;->long1:J

    move-object v0, v10

    move-object/from16 v1, p1

    move-wide v2, v8

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    :goto_18d
    or-int v6, v6, v21

    move-object v9, v10

    move v2, v13

    move/from16 v0, v17

    goto/16 :goto_202

    :pswitch_195
    move/from16 v13, v19

    move/from16 v19, p3

    if-ne v3, v1, :cond_1b7

    invoke-static {v12, v4}, Lcom/google/protobuf/h;->decodeFloat([BI)F

    move-result v0

    invoke-static {v14, v8, v9, v0}, Lcom/google/protobuf/b2;->putFloat(Ljava/lang/Object;JF)V

    :goto_1a2
    add-int/lit8 v0, v4, 0x4

    goto :goto_1b4

    :pswitch_1a5
    move/from16 v13, v19

    move/from16 v19, p3

    if-ne v3, v5, :cond_1b7

    invoke-static {v12, v4}, Lcom/google/protobuf/h;->decodeDouble([BI)D

    move-result-wide v0

    invoke-static {v14, v8, v9, v0, v1}, Lcom/google/protobuf/b2;->putDouble(Ljava/lang/Object;JD)V

    add-int/lit8 v0, v4, 0x8

    :goto_1b4
    or-int v6, v6, v21

    goto :goto_200

    :cond_1b7
    :goto_1b7
    move v2, v4

    move-object/from16 v28, v10

    move/from16 v20, v13

    const/16 v18, -0x1

    goto/16 :goto_2bf

    :cond_1c0
    move/from16 v19, p3

    move/from16 v23, v1

    move v13, v2

    move-object/from16 v10, v18

    const/16 v1, 0x1b

    if-ne v0, v1, :cond_216

    const/4 v1, 0x2

    if-ne v3, v1, :cond_209

    invoke-virtual {v10, v14, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Internal$j;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$j;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_1ec

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1e3

    const/16 v1, 0xa

    goto :goto_1e5

    :cond_1e3
    mul-int/lit8 v1, v1, 0x2

    :goto_1e5
    invoke-interface {v0, v1}, Lcom/google/protobuf/Internal$j;->mutableCopyWithCapacity(I)Lcom/google/protobuf/Internal$j;

    move-result-object v0

    invoke-virtual {v10, v14, v8, v9, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_1ec
    move-object v5, v0

    invoke-direct {v15, v13}, Lcom/google/protobuf/t0;->getMessageFieldSchema(I)Lcom/google/protobuf/l1;

    move-result-object v0

    move/from16 v1, v17

    move-object/from16 v2, p2

    move v3, v4

    move/from16 v4, p4

    move v8, v6

    move-object/from16 v6, p5

    invoke-static/range {v0 .. v6}, Lcom/google/protobuf/h;->decodeMessageList(Lcom/google/protobuf/l1;I[BIILcom/google/protobuf/Internal$j;Lcom/google/protobuf/h$b;)I

    move-result v0

    move v6, v8

    :goto_200
    move-object v9, v10

    move v2, v13

    :goto_202
    move/from16 v1, v19

    const/4 v10, -0x1

    move/from16 v13, p4

    goto/16 :goto_1a

    :cond_209
    move v15, v4

    move/from16 v24, v6

    move/from16 v25, v7

    move-object/from16 v28, v10

    move/from16 v20, v13

    const/16 v18, -0x1

    goto/16 :goto_29a

    :cond_216
    const/16 v1, 0x31

    if-gt v0, v1, :cond_266

    move/from16 v1, v23

    int-to-long v1, v1

    move v5, v0

    move-object/from16 v0, p0

    move-wide/from16 v21, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 p3, v3

    move v3, v4

    move v15, v4

    move/from16 v4, p4

    move/from16 v23, v5

    move/from16 v5, v17

    move/from16 v24, v6

    move/from16 v6, v19

    move/from16 v25, v7

    move/from16 v7, p3

    move-wide/from16 v26, v8

    const v9, 0xfffff

    move v8, v13

    move-object/from16 v28, v10

    const/16 v18, -0x1

    move-wide/from16 v9, v21

    move/from16 v11, v23

    move/from16 v20, v13

    move-wide/from16 v12, v26

    move-object/from16 v14, p5

    invoke-direct/range {v0 .. v14}, Lcom/google/protobuf/t0;->parseRepeatedField(Ljava/lang/Object;[BIIIIIIJIJLcom/google/protobuf/h$b;)I

    move-result v0

    if-eq v0, v15, :cond_2bd

    :goto_252
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v6, v24

    move/from16 v7, v25

    goto/16 :goto_2dd

    :cond_266
    move/from16 p3, v3

    move v15, v4

    move/from16 v24, v6

    move/from16 v25, v7

    move-wide/from16 v26, v8

    move-object/from16 v28, v10

    move/from16 v20, v13

    move/from16 v1, v23

    const/16 v18, -0x1

    move/from16 v23, v0

    const/16 v0, 0x32

    move/from16 v9, v23

    if-ne v9, v0, :cond_2a0

    move/from16 v7, p3

    const/4 v0, 0x2

    if-ne v7, v0, :cond_29a

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, v20

    move-wide/from16 v6, v26

    move-object/from16 v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/google/protobuf/t0;->parseMapField(Ljava/lang/Object;[BIIIJLcom/google/protobuf/h$b;)I

    move-result v0

    if-eq v0, v15, :cond_2bd

    goto :goto_252

    :cond_29a
    :goto_29a
    move v2, v15

    :goto_29b
    move/from16 v6, v24

    move/from16 v7, v25

    goto :goto_2bf

    :cond_2a0
    move/from16 v7, p3

    move-object/from16 v0, p0

    move v8, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, v17

    move/from16 v6, v19

    move-wide/from16 v10, v26

    move/from16 v12, v20

    move-object/from16 v13, p5

    invoke-direct/range {v0 .. v13}, Lcom/google/protobuf/t0;->parseOneofField(Ljava/lang/Object;[BIIIIIIIJILcom/google/protobuf/h$b;)I

    move-result v0

    if-eq v0, v15, :cond_2bd

    goto :goto_252

    :cond_2bd
    move v2, v0

    goto :goto_29b

    :goto_2bf
    invoke-static/range {p1 .. p1}, Lcom/google/protobuf/t0;->getMutableUnknownFields(Ljava/lang/Object;)Lcom/google/protobuf/UnknownFieldSetLite;

    move-result-object v4

    move/from16 v0, v17

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v5, p5

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/h;->decodeUnknownField(I[BIILcom/google/protobuf/UnknownFieldSetLite;Lcom/google/protobuf/h$b;)I

    move-result v0

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    move/from16 v1, v19

    move/from16 v2, v20

    :goto_2dd
    move-object/from16 v9, v28

    const/4 v10, -0x1

    goto/16 :goto_1a

    :cond_2e2
    move/from16 v24, v6

    move-object/from16 v28, v9

    const v1, 0xfffff

    if-eq v7, v1, :cond_2f5

    int-to-long v1, v7

    move-object/from16 v3, p1

    move/from16 v6, v24

    move-object/from16 v4, v28

    invoke-virtual {v4, v3, v1, v2, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_2f5
    move/from16 v1, p4

    if-ne v0, v1, :cond_2fa

    return v0

    :cond_2fa
    invoke-static {}, Lcom/google/protobuf/d0;->parseFailure()Lcom/google/protobuf/d0;

    move-result-object v0

    throw v0

    nop

    :pswitch_data_300
    .packed-switch 0x0
        :pswitch_1a5
        :pswitch_195
        :pswitch_17a
        :pswitch_17a
        :pswitch_16a
        :pswitch_153
        :pswitch_145
        :pswitch_12c
        :pswitch_10f
        :pswitch_ef
        :pswitch_dd
        :pswitch_16a
        :pswitch_cc
        :pswitch_145
        :pswitch_153
        :pswitch_b7
        :pswitch_9e
    .end packed-switch
.end method

.method private parseRepeatedField(Ljava/lang/Object;[BIIIIIIJIJLcom/google/protobuf/h$b;)I
    .registers 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIIIIIIJIJ",
            "Lcom/google/protobuf/h$b;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move/from16 v4, p3

    move/from16 v2, p7

    move/from16 v8, p8

    move-wide/from16 v5, p12

    move-object/from16 v7, p14

    sget-object v9, Lcom/google/protobuf/t0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v9, p1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/protobuf/Internal$j;

    invoke-interface {v10}, Lcom/google/protobuf/Internal$j;->isModifiable()Z

    move-result v11

    const/4 v12, 0x2

    if-nez v11, :cond_2e

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    if-nez v11, :cond_25

    const/16 v11, 0xa

    goto :goto_27

    :cond_25
    mul-int/lit8 v11, v11, 0x2

    :goto_27
    invoke-interface {v10, v11}, Lcom/google/protobuf/Internal$j;->mutableCopyWithCapacity(I)Lcom/google/protobuf/Internal$j;

    move-result-object v10

    invoke-virtual {v9, p1, v5, v6, v10}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_2e
    const/4 v5, 0x5

    const/4 v6, 0x1

    packed-switch p11, :pswitch_data_1be

    goto/16 :goto_1bc

    :pswitch_35
    const/4 v1, 0x3

    if-ne v2, v1, :cond_1bc

    invoke-direct {p0, v8}, Lcom/google/protobuf/t0;->getMessageFieldSchema(I)Lcom/google/protobuf/l1;

    move-result-object v1

    move-object/from16 p6, v1

    move/from16 p7, p5

    move-object/from16 p8, p2

    move/from16 p9, p3

    move/from16 p10, p4

    move-object/from16 p11, v10

    move-object/from16 p12, p14

    invoke-static/range {p6 .. p12}, Lcom/google/protobuf/h;->decodeGroupList(Lcom/google/protobuf/l1;I[BIILcom/google/protobuf/Internal$j;Lcom/google/protobuf/h$b;)I

    move-result v1

    goto/16 :goto_1bd

    :pswitch_50
    if-ne v2, v12, :cond_58

    invoke-static {p2, v4, v10, v7}, Lcom/google/protobuf/h;->decodePackedSInt64List([BILcom/google/protobuf/Internal$j;Lcom/google/protobuf/h$b;)I

    move-result v1

    goto/16 :goto_1bd

    :cond_58
    if-nez v2, :cond_1bc

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v10

    move-object/from16 p10, p14

    invoke-static/range {p5 .. p10}, Lcom/google/protobuf/h;->decodeSInt64List(I[BIILcom/google/protobuf/Internal$j;Lcom/google/protobuf/h$b;)I

    move-result v1

    goto/16 :goto_1bd

    :pswitch_6a
    if-ne v2, v12, :cond_72

    invoke-static {p2, v4, v10, v7}, Lcom/google/protobuf/h;->decodePackedSInt32List([BILcom/google/protobuf/Internal$j;Lcom/google/protobuf/h$b;)I

    move-result v1

    goto/16 :goto_1bd

    :cond_72
    if-nez v2, :cond_1bc

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v10

    move-object/from16 p10, p14

    invoke-static/range {p5 .. p10}, Lcom/google/protobuf/h;->decodeSInt32List(I[BIILcom/google/protobuf/Internal$j;Lcom/google/protobuf/h$b;)I

    move-result v1

    goto/16 :goto_1bd

    :pswitch_84
    if-ne v2, v12, :cond_8b

    invoke-static {p2, v4, v10, v7}, Lcom/google/protobuf/h;->decodePackedVarint32List([BILcom/google/protobuf/Internal$j;Lcom/google/protobuf/h$b;)I

    move-result v2

    goto :goto_9b

    :cond_8b
    if-nez v2, :cond_1bc

    move/from16 v2, p5

    move-object v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v10

    move-object/from16 v7, p14

    invoke-static/range {v2 .. v7}, Lcom/google/protobuf/h;->decodeVarint32List(I[BIILcom/google/protobuf/Internal$j;Lcom/google/protobuf/h$b;)I

    move-result v2

    :goto_9b
    invoke-direct {p0, v8}, Lcom/google/protobuf/t0;->getEnumFieldVerifier(I)Lcom/google/protobuf/Internal$e;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, v0, Lcom/google/protobuf/t0;->unknownFieldSchema:Lcom/google/protobuf/y1;

    move-object/from16 p7, p1

    move/from16 p8, p6

    move-object/from16 p9, v10

    move-object/from16 p10, v3

    move-object/from16 p11, v4

    move-object/from16 p12, v5

    invoke-static/range {p7 .. p12}, Lcom/google/protobuf/SchemaUtil;->filterUnknownEnumList(Ljava/lang/Object;ILjava/util/List;Lcom/google/protobuf/Internal$e;Ljava/lang/Object;Lcom/google/protobuf/y1;)Ljava/lang/Object;

    move v1, v2

    goto/16 :goto_1bd

    :pswitch_b4
    if-ne v2, v12, :cond_1bc

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v10

    move-object/from16 p10, p14

    invoke-static/range {p5 .. p10}, Lcom/google/protobuf/h;->decodeBytesList(I[BIILcom/google/protobuf/Internal$j;Lcom/google/protobuf/h$b;)I

    move-result v1

    goto/16 :goto_1bd

    :pswitch_c6
    if-ne v2, v12, :cond_1bc

    invoke-direct {p0, v8}, Lcom/google/protobuf/t0;->getMessageFieldSchema(I)Lcom/google/protobuf/l1;

    move-result-object v1

    move-object/from16 p6, v1

    move/from16 p7, p5

    move-object/from16 p8, p2

    move/from16 p9, p3

    move/from16 p10, p4

    move-object/from16 p11, v10

    move-object/from16 p12, p14

    invoke-static/range {p6 .. p12}, Lcom/google/protobuf/h;->decodeMessageList(Lcom/google/protobuf/l1;I[BIILcom/google/protobuf/Internal$j;Lcom/google/protobuf/h$b;)I

    move-result v1

    goto/16 :goto_1bd

    :pswitch_e0
    if-ne v2, v12, :cond_1bc

    const-wide/32 v1, 0x20000000

    and-long v1, p9, v1

    const-wide/16 v5, 0x0

    cmp-long v8, v1, v5

    if-nez v8, :cond_fd

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v10

    move-object/from16 p10, p14

    invoke-static/range {p5 .. p10}, Lcom/google/protobuf/h;->decodeStringList(I[BIILcom/google/protobuf/Internal$j;Lcom/google/protobuf/h$b;)I

    move-result v1

    goto/16 :goto_1bd

    :cond_fd
    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v10

    move-object/from16 p10, p14

    invoke-static/range {p5 .. p10}, Lcom/google/protobuf/h;->decodeStringListRequireUtf8(I[BIILcom/google/protobuf/Internal$j;Lcom/google/protobuf/h$b;)I

    move-result v1

    goto/16 :goto_1bd

    :pswitch_10d
    if-ne v2, v12, :cond_115

    invoke-static {p2, v4, v10, v7}, Lcom/google/protobuf/h;->decodePackedBoolList([BILcom/google/protobuf/Internal$j;Lcom/google/protobuf/h$b;)I

    move-result v1

    goto/16 :goto_1bd

    :cond_115
    if-nez v2, :cond_1bc

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v10

    move-object/from16 p10, p14

    invoke-static/range {p5 .. p10}, Lcom/google/protobuf/h;->decodeBoolList(I[BIILcom/google/protobuf/Internal$j;Lcom/google/protobuf/h$b;)I

    move-result v1

    goto/16 :goto_1bd

    :pswitch_127
    if-ne v2, v12, :cond_12f

    invoke-static {p2, v4, v10, v7}, Lcom/google/protobuf/h;->decodePackedFixed32List([BILcom/google/protobuf/Internal$j;Lcom/google/protobuf/h$b;)I

    move-result v1

    goto/16 :goto_1bd

    :cond_12f
    if-ne v2, v5, :cond_1bc

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v10

    move-object/from16 p10, p14

    invoke-static/range {p5 .. p10}, Lcom/google/protobuf/h;->decodeFixed32List(I[BIILcom/google/protobuf/Internal$j;Lcom/google/protobuf/h$b;)I

    move-result v1

    goto/16 :goto_1bd

    :pswitch_141
    if-ne v2, v12, :cond_149

    invoke-static {p2, v4, v10, v7}, Lcom/google/protobuf/h;->decodePackedFixed64List([BILcom/google/protobuf/Internal$j;Lcom/google/protobuf/h$b;)I

    move-result v1

    goto/16 :goto_1bd

    :cond_149
    if-ne v2, v6, :cond_1bc

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v10

    move-object/from16 p10, p14

    invoke-static/range {p5 .. p10}, Lcom/google/protobuf/h;->decodeFixed64List(I[BIILcom/google/protobuf/Internal$j;Lcom/google/protobuf/h$b;)I

    move-result v1

    goto/16 :goto_1bd

    :pswitch_15b
    if-ne v2, v12, :cond_163

    invoke-static {p2, v4, v10, v7}, Lcom/google/protobuf/h;->decodePackedVarint32List([BILcom/google/protobuf/Internal$j;Lcom/google/protobuf/h$b;)I

    move-result v1

    goto/16 :goto_1bd

    :cond_163
    if-nez v2, :cond_1bc

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v10

    move-object/from16 p10, p14

    invoke-static/range {p5 .. p10}, Lcom/google/protobuf/h;->decodeVarint32List(I[BIILcom/google/protobuf/Internal$j;Lcom/google/protobuf/h$b;)I

    move-result v1

    goto :goto_1bd

    :pswitch_174
    if-ne v2, v12, :cond_17b

    invoke-static {p2, v4, v10, v7}, Lcom/google/protobuf/h;->decodePackedVarint64List([BILcom/google/protobuf/Internal$j;Lcom/google/protobuf/h$b;)I

    move-result v1

    goto :goto_1bd

    :cond_17b
    if-nez v2, :cond_1bc

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v10

    move-object/from16 p10, p14

    invoke-static/range {p5 .. p10}, Lcom/google/protobuf/h;->decodeVarint64List(I[BIILcom/google/protobuf/Internal$j;Lcom/google/protobuf/h$b;)I

    move-result v1

    goto :goto_1bd

    :pswitch_18c
    if-ne v2, v12, :cond_193

    invoke-static {p2, v4, v10, v7}, Lcom/google/protobuf/h;->decodePackedFloatList([BILcom/google/protobuf/Internal$j;Lcom/google/protobuf/h$b;)I

    move-result v1

    goto :goto_1bd

    :cond_193
    if-ne v2, v5, :cond_1bc

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v10

    move-object/from16 p10, p14

    invoke-static/range {p5 .. p10}, Lcom/google/protobuf/h;->decodeFloatList(I[BIILcom/google/protobuf/Internal$j;Lcom/google/protobuf/h$b;)I

    move-result v1

    goto :goto_1bd

    :pswitch_1a4
    if-ne v2, v12, :cond_1ab

    invoke-static {p2, v4, v10, v7}, Lcom/google/protobuf/h;->decodePackedDoubleList([BILcom/google/protobuf/Internal$j;Lcom/google/protobuf/h$b;)I

    move-result v1

    goto :goto_1bd

    :cond_1ab
    if-ne v2, v6, :cond_1bc

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v10

    move-object/from16 p10, p14

    invoke-static/range {p5 .. p10}, Lcom/google/protobuf/h;->decodeDoubleList(I[BIILcom/google/protobuf/Internal$j;Lcom/google/protobuf/h$b;)I

    move-result v1

    goto :goto_1bd

    :cond_1bc
    :goto_1bc
    move v1, v4

    :goto_1bd
    return v1

    :pswitch_data_1be
    .packed-switch 0x12
        :pswitch_1a4
        :pswitch_18c
        :pswitch_174
        :pswitch_174
        :pswitch_15b
        :pswitch_141
        :pswitch_127
        :pswitch_10d
        :pswitch_e0
        :pswitch_c6
        :pswitch_b4
        :pswitch_15b
        :pswitch_84
        :pswitch_127
        :pswitch_141
        :pswitch_6a
        :pswitch_50
        :pswitch_1a4
        :pswitch_18c
        :pswitch_174
        :pswitch_174
        :pswitch_15b
        :pswitch_141
        :pswitch_127
        :pswitch_10d
        :pswitch_15b
        :pswitch_84
        :pswitch_127
        :pswitch_141
        :pswitch_6a
        :pswitch_50
        :pswitch_35
    .end packed-switch
.end method

.method private positionForFieldNumber(I)I
    .registers 3

    iget v0, p0, Lcom/google/protobuf/t0;->minFieldNumber:I

    if-lt p1, v0, :cond_e

    iget v0, p0, Lcom/google/protobuf/t0;->maxFieldNumber:I

    if-gt p1, v0, :cond_e

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/protobuf/t0;->slowPositionForFieldNumber(II)I

    move-result p1

    return p1

    :cond_e
    const/4 p1, -0x1

    return p1
.end method

.method private positionForFieldNumber(II)I
    .registers 4

    iget v0, p0, Lcom/google/protobuf/t0;->minFieldNumber:I

    if-lt p1, v0, :cond_d

    iget v0, p0, Lcom/google/protobuf/t0;->maxFieldNumber:I

    if-gt p1, v0, :cond_d

    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/t0;->slowPositionForFieldNumber(II)I

    move-result p1

    return p1

    :cond_d
    const/4 p1, -0x1

    return p1
.end method

.method private presenceMaskAndOffsetAt(I)I
    .registers 3

    iget-object v0, p0, Lcom/google/protobuf/t0;->buffer:[I

    add-int/lit8 p1, p1, 0x2

    aget p1, v0, p1

    return p1
.end method

.method private readGroupList(Ljava/lang/Object;JLcom/google/protobuf/j1;Lcom/google/protobuf/l1;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "J",
            "Lcom/google/protobuf/j1;",
            "Lcom/google/protobuf/l1<",
            "TE;>;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/t0;->listFieldSchema:Lcom/google/protobuf/i0;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/protobuf/i0;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object p1

    invoke-interface {p4, p1, p5, p6}, Lcom/google/protobuf/j1;->readGroupList(Ljava/util/List;Lcom/google/protobuf/l1;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private readMessageList(Ljava/lang/Object;ILcom/google/protobuf/j1;Lcom/google/protobuf/l1;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "I",
            "Lcom/google/protobuf/j1;",
            "Lcom/google/protobuf/l1<",
            "TE;>;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p2}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v0

    iget-object p2, p0, Lcom/google/protobuf/t0;->listFieldSchema:Lcom/google/protobuf/i0;

    invoke-virtual {p2, p1, v0, v1}, Lcom/google/protobuf/i0;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object p1

    invoke-interface {p3, p1, p4, p5}, Lcom/google/protobuf/j1;->readMessageList(Ljava/util/List;Lcom/google/protobuf/l1;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private readString(Ljava/lang/Object;ILcom/google/protobuf/j1;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p2}, Lcom/google/protobuf/t0;->isEnforceUtf8(I)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {p2}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v0

    invoke-interface {p3}, Lcom/google/protobuf/j1;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, v1, p2}, Lcom/google/protobuf/b2;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_2d

    :cond_12
    iget-boolean v0, p0, Lcom/google/protobuf/t0;->lite:Z

    if-eqz v0, :cond_22

    invoke-static {p2}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v0

    invoke-interface {p3}, Lcom/google/protobuf/j1;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, v1, p2}, Lcom/google/protobuf/b2;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_2d

    :cond_22
    invoke-static {p2}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v0

    invoke-interface {p3}, Lcom/google/protobuf/j1;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object p2

    invoke-static {p1, v0, v1, p2}, Lcom/google/protobuf/b2;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_2d
    return-void
.end method

.method private readStringList(Ljava/lang/Object;ILcom/google/protobuf/j1;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p2}, Lcom/google/protobuf/t0;->isEnforceUtf8(I)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/protobuf/t0;->listFieldSchema:Lcom/google/protobuf/i0;

    invoke-static {p2}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/protobuf/i0;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/google/protobuf/j1;->readStringListRequireUtf8(Ljava/util/List;)V

    goto :goto_21

    :cond_14
    iget-object v0, p0, Lcom/google/protobuf/t0;->listFieldSchema:Lcom/google/protobuf/i0;

    invoke-static {p2}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/protobuf/i0;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/google/protobuf/j1;->readStringList(Ljava/util/List;)V

    :goto_21
    return-void
.end method

.method private static reflectField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_1d

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    return-object v3

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_1d
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Field "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not found. Known fields are "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private setFieldPresent(Ljava/lang/Object;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/google/protobuf/t0;->presenceMaskAndOffsetAt(I)I

    move-result p2

    const v0, 0xfffff

    and-int/2addr v0, p2

    int-to-long v0, v0

    const-wide/32 v2, 0xfffff

    cmp-long v4, v0, v2

    if-nez v4, :cond_11

    return-void

    :cond_11
    const/4 v2, 0x1

    ushr-int/lit8 p2, p2, 0x14

    shl-int p2, v2, p2

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/b2;->getInt(Ljava/lang/Object;J)I

    move-result v2

    or-int/2addr p2, v2

    invoke-static {p1, v0, v1, p2}, Lcom/google/protobuf/b2;->putInt(Ljava/lang/Object;JI)V

    return-void
.end method

.method private setOneofPresent(Ljava/lang/Object;II)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)V"
        }
    .end annotation

    invoke-direct {p0, p3}, Lcom/google/protobuf/t0;->presenceMaskAndOffsetAt(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    invoke-static {p1, v0, v1, p2}, Lcom/google/protobuf/b2;->putInt(Ljava/lang/Object;JI)V

    return-void
.end method

.method private slowPositionForFieldNumber(II)I
    .registers 7

    iget-object v0, p0, Lcom/google/protobuf/t0;->buffer:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, -0x1

    :goto_7
    if-gt p2, v0, :cond_20

    add-int v1, v0, p2

    ushr-int/lit8 v1, v1, 0x1

    mul-int/lit8 v2, v1, 0x3

    invoke-direct {p0, v2}, Lcom/google/protobuf/t0;->numberAt(I)I

    move-result v3

    if-ne p1, v3, :cond_16

    return v2

    :cond_16
    if-ge p1, v3, :cond_1c

    add-int/lit8 v1, v1, -0x1

    move v0, v1

    goto :goto_7

    :cond_1c
    add-int/lit8 v1, v1, 0x1

    move p2, v1

    goto :goto_7

    :cond_20
    const/4 p1, -0x1

    return p1
.end method

.method private static storeFieldData(Lcom/google/protobuf/FieldInfo;[II[Ljava/lang/Object;)V
    .registers 12

    invoke-virtual {p0}, Lcom/google/protobuf/FieldInfo;->getOneof()Lcom/google/protobuf/d1;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_25

    invoke-virtual {p0}, Lcom/google/protobuf/FieldInfo;->getType()Lcom/google/protobuf/FieldType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/FieldType;->id()I

    move-result v2

    add-int/lit8 v2, v2, 0x33

    invoke-virtual {v0}, Lcom/google/protobuf/d1;->getValueField()Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-static {v3}, Lcom/google/protobuf/b2;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v3

    long-to-int v4, v3

    invoke-virtual {v0}, Lcom/google/protobuf/d1;->getCaseField()Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/b2;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v5

    :goto_22
    long-to-int v0, v5

    :goto_23
    const/4 v3, 0x0

    goto :goto_6b

    :cond_25
    invoke-virtual {p0}, Lcom/google/protobuf/FieldInfo;->getType()Lcom/google/protobuf/FieldType;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protobuf/FieldInfo;->getField()Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-static {v2}, Lcom/google/protobuf/b2;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    long-to-int v4, v2

    invoke-virtual {v0}, Lcom/google/protobuf/FieldType;->id()I

    move-result v2

    invoke-virtual {v0}, Lcom/google/protobuf/FieldType;->isList()Z

    move-result v3

    if-nez v3, :cond_5a

    invoke-virtual {v0}, Lcom/google/protobuf/FieldType;->isMap()Z

    move-result v0

    if-nez v0, :cond_5a

    invoke-virtual {p0}, Lcom/google/protobuf/FieldInfo;->getPresenceField()Ljava/lang/reflect/Field;

    move-result-object v0

    if-nez v0, :cond_4c

    const v0, 0xfffff

    goto :goto_51

    :cond_4c
    invoke-static {v0}, Lcom/google/protobuf/b2;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v5

    long-to-int v0, v5

    :goto_51
    invoke-virtual {p0}, Lcom/google/protobuf/FieldInfo;->getPresenceMask()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v3

    goto :goto_6b

    :cond_5a
    invoke-virtual {p0}, Lcom/google/protobuf/FieldInfo;->getCachedSizeField()Ljava/lang/reflect/Field;

    move-result-object v0

    if-nez v0, :cond_62

    const/4 v0, 0x0

    goto :goto_23

    :cond_62
    invoke-virtual {p0}, Lcom/google/protobuf/FieldInfo;->getCachedSizeField()Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/b2;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v5

    goto :goto_22

    :goto_6b
    invoke-virtual {p0}, Lcom/google/protobuf/FieldInfo;->getFieldNumber()I

    move-result v5

    aput v5, p1, p2

    add-int/lit8 v5, p2, 0x1

    invoke-virtual {p0}, Lcom/google/protobuf/FieldInfo;->isEnforceUtf8()Z

    move-result v6

    if-eqz v6, :cond_7c

    const/high16 v6, 0x20000000

    goto :goto_7d

    :cond_7c
    const/4 v6, 0x0

    :goto_7d
    invoke-virtual {p0}, Lcom/google/protobuf/FieldInfo;->isRequired()Z

    move-result v7

    if-eqz v7, :cond_85

    const/high16 v1, 0x10000000

    :cond_85
    or-int/2addr v1, v6

    shl-int/lit8 v2, v2, 0x14

    or-int/2addr v1, v2

    or-int/2addr v1, v4

    aput v1, p1, v5

    add-int/lit8 v1, p2, 0x2

    shl-int/lit8 v2, v3, 0x14

    or-int/2addr v0, v2

    aput v0, p1, v1

    invoke-virtual {p0}, Lcom/google/protobuf/FieldInfo;->getMessageFieldClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/protobuf/FieldInfo;->getMapDefaultEntry()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_bd

    div-int/lit8 p2, p2, 0x3

    mul-int/lit8 p2, p2, 0x2

    invoke-virtual {p0}, Lcom/google/protobuf/FieldInfo;->getMapDefaultEntry()Ljava/lang/Object;

    move-result-object v0

    aput-object v0, p3, p2

    if-eqz p1, :cond_ae

    add-int/lit8 p2, p2, 0x1

    aput-object p1, p3, p2

    goto :goto_da

    :cond_ae
    invoke-virtual {p0}, Lcom/google/protobuf/FieldInfo;->getEnumVerifier()Lcom/google/protobuf/Internal$e;

    move-result-object p1

    if-eqz p1, :cond_da

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p0}, Lcom/google/protobuf/FieldInfo;->getEnumVerifier()Lcom/google/protobuf/Internal$e;

    move-result-object p0

    aput-object p0, p3, p2

    goto :goto_da

    :cond_bd
    if-eqz p1, :cond_c8

    div-int/lit8 p2, p2, 0x3

    mul-int/lit8 p2, p2, 0x2

    add-int/lit8 p2, p2, 0x1

    aput-object p1, p3, p2

    goto :goto_da

    :cond_c8
    invoke-virtual {p0}, Lcom/google/protobuf/FieldInfo;->getEnumVerifier()Lcom/google/protobuf/Internal$e;

    move-result-object p1

    if-eqz p1, :cond_da

    div-int/lit8 p2, p2, 0x3

    mul-int/lit8 p2, p2, 0x2

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p0}, Lcom/google/protobuf/FieldInfo;->getEnumVerifier()Lcom/google/protobuf/Internal$e;

    move-result-object p0

    aput-object p0, p3, p2

    :cond_da
    :goto_da
    return-void
.end method

.method private storeMessageField(Ljava/lang/Object;ILjava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/t0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-direct {p0, p2}, Lcom/google/protobuf/t0;->typeAndOffsetAt(I)I

    move-result v1

    invoke-static {v1}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2, p3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/t0;->setFieldPresent(Ljava/lang/Object;I)V

    return-void
.end method

.method private storeOneofMessageField(Ljava/lang/Object;IILjava/lang/Object;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/t0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-direct {p0, p3}, Lcom/google/protobuf/t0;->typeAndOffsetAt(I)I

    move-result v1

    invoke-static {v1}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2, p4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/t0;->setOneofPresent(Ljava/lang/Object;II)V

    return-void
.end method

.method private static type(I)I
    .registers 2

    const/high16 v0, 0xff00000

    and-int/2addr p0, v0

    ushr-int/lit8 p0, p0, 0x14

    return p0
.end method

.method private typeAndOffsetAt(I)I
    .registers 3

    iget-object v0, p0, Lcom/google/protobuf/t0;->buffer:[I

    add-int/lit8 p1, p1, 0x1

    aget p1, v0, p1

    return p1
.end method

.method private writeFieldsInAscendingOrderProto2(Ljava/lang/Object;Lcom/google/protobuf/Writer;)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/protobuf/Writer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-boolean v3, v0, Lcom/google/protobuf/t0;->hasExtensions:Z

    if-eqz v3, :cond_21

    iget-object v3, v0, Lcom/google/protobuf/t0;->extensionSchema:Lcom/google/protobuf/u;

    invoke-virtual {v3, v1}, Lcom/google/protobuf/u;->getExtensions(Ljava/lang/Object;)Lcom/google/protobuf/FieldSet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/FieldSet;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_21

    invoke-virtual {v3}, Lcom/google/protobuf/FieldSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    goto :goto_23

    :cond_21
    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_23
    iget-object v6, v0, Lcom/google/protobuf/t0;->buffer:[I

    array-length v6, v6

    sget-object v7, Lcom/google/protobuf/t0;->UNSAFE:Lsun/misc/Unsafe;

    const v8, 0xfffff

    const/4 v10, 0x0

    const v11, 0xfffff

    const/4 v12, 0x0

    :goto_30
    if-ge v10, v6, :cond_48f

    invoke-direct {v0, v10}, Lcom/google/protobuf/t0;->typeAndOffsetAt(I)I

    move-result v13

    invoke-direct {v0, v10}, Lcom/google/protobuf/t0;->numberAt(I)I

    move-result v14

    invoke-static {v13}, Lcom/google/protobuf/t0;->type(I)I

    move-result v15

    const/16 v4, 0x11

    if-gt v15, v4, :cond_58

    iget-object v4, v0, Lcom/google/protobuf/t0;->buffer:[I

    add-int/lit8 v16, v10, 0x2

    aget v4, v4, v16

    and-int v9, v4, v8

    if-eq v9, v11, :cond_52

    int-to-long v11, v9

    invoke-virtual {v7, v1, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v12

    move v11, v9

    :cond_52
    ushr-int/lit8 v4, v4, 0x14

    const/4 v9, 0x1

    shl-int v4, v9, v4

    goto :goto_59

    :cond_58
    const/4 v4, 0x0

    :goto_59
    if-eqz v5, :cond_77

    iget-object v9, v0, Lcom/google/protobuf/t0;->extensionSchema:Lcom/google/protobuf/u;

    invoke-virtual {v9, v5}, Lcom/google/protobuf/u;->extensionNumber(Ljava/util/Map$Entry;)I

    move-result v9

    if-gt v9, v14, :cond_77

    iget-object v9, v0, Lcom/google/protobuf/t0;->extensionSchema:Lcom/google/protobuf/u;

    invoke-virtual {v9, v2, v5}, Lcom/google/protobuf/u;->serializeExtension(Lcom/google/protobuf/Writer;Ljava/util/Map$Entry;)V

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_75

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    goto :goto_59

    :cond_75
    const/4 v5, 0x0

    goto :goto_59

    :cond_77
    invoke-static {v13}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v8

    packed-switch v15, :pswitch_data_4ac

    :cond_7e
    :goto_7e
    const/4 v13, 0x0

    goto/16 :goto_488

    :pswitch_81
    invoke-direct {v0, v1, v14, v10}, Lcom/google/protobuf/t0;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_7e

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v10}, Lcom/google/protobuf/t0;->getMessageFieldSchema(I)Lcom/google/protobuf/l1;

    move-result-object v8

    invoke-interface {v2, v14, v4, v8}, Lcom/google/protobuf/Writer;->writeGroup(ILjava/lang/Object;Lcom/google/protobuf/l1;)V

    goto :goto_7e

    :pswitch_93
    invoke-direct {v0, v1, v14, v10}, Lcom/google/protobuf/t0;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_7e

    invoke-static {v1, v8, v9}, Lcom/google/protobuf/t0;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {v2, v14, v8, v9}, Lcom/google/protobuf/Writer;->writeSInt64(IJ)V

    goto :goto_7e

    :pswitch_a1
    invoke-direct {v0, v1, v14, v10}, Lcom/google/protobuf/t0;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_7e

    invoke-static {v1, v8, v9}, Lcom/google/protobuf/t0;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/google/protobuf/Writer;->writeSInt32(II)V

    goto :goto_7e

    :pswitch_af
    invoke-direct {v0, v1, v14, v10}, Lcom/google/protobuf/t0;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_7e

    invoke-static {v1, v8, v9}, Lcom/google/protobuf/t0;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {v2, v14, v8, v9}, Lcom/google/protobuf/Writer;->writeSFixed64(IJ)V

    goto :goto_7e

    :pswitch_bd
    invoke-direct {v0, v1, v14, v10}, Lcom/google/protobuf/t0;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_7e

    invoke-static {v1, v8, v9}, Lcom/google/protobuf/t0;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/google/protobuf/Writer;->writeSFixed32(II)V

    goto :goto_7e

    :pswitch_cb
    invoke-direct {v0, v1, v14, v10}, Lcom/google/protobuf/t0;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_7e

    invoke-static {v1, v8, v9}, Lcom/google/protobuf/t0;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/google/protobuf/Writer;->writeEnum(II)V

    goto :goto_7e

    :pswitch_d9
    invoke-direct {v0, v1, v14, v10}, Lcom/google/protobuf/t0;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_7e

    invoke-static {v1, v8, v9}, Lcom/google/protobuf/t0;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/google/protobuf/Writer;->writeUInt32(II)V

    goto :goto_7e

    :pswitch_e7
    invoke-direct {v0, v1, v14, v10}, Lcom/google/protobuf/t0;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_7e

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/ByteString;

    invoke-interface {v2, v14, v4}, Lcom/google/protobuf/Writer;->writeBytes(ILcom/google/protobuf/ByteString;)V

    goto :goto_7e

    :pswitch_f7
    invoke-direct {v0, v1, v14, v10}, Lcom/google/protobuf/t0;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_7e

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v10}, Lcom/google/protobuf/t0;->getMessageFieldSchema(I)Lcom/google/protobuf/l1;

    move-result-object v8

    invoke-interface {v2, v14, v4, v8}, Lcom/google/protobuf/Writer;->writeMessage(ILjava/lang/Object;Lcom/google/protobuf/l1;)V

    goto/16 :goto_7e

    :pswitch_10a
    invoke-direct {v0, v1, v14, v10}, Lcom/google/protobuf/t0;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_7e

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v14, v4, v2}, Lcom/google/protobuf/t0;->writeString(ILjava/lang/Object;Lcom/google/protobuf/Writer;)V

    goto/16 :goto_7e

    :pswitch_119
    invoke-direct {v0, v1, v14, v10}, Lcom/google/protobuf/t0;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_7e

    invoke-static {v1, v8, v9}, Lcom/google/protobuf/t0;->oneofBooleanAt(Ljava/lang/Object;J)Z

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/google/protobuf/Writer;->writeBool(IZ)V

    goto/16 :goto_7e

    :pswitch_128
    invoke-direct {v0, v1, v14, v10}, Lcom/google/protobuf/t0;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_7e

    invoke-static {v1, v8, v9}, Lcom/google/protobuf/t0;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/google/protobuf/Writer;->writeFixed32(II)V

    goto/16 :goto_7e

    :pswitch_137
    invoke-direct {v0, v1, v14, v10}, Lcom/google/protobuf/t0;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_7e

    invoke-static {v1, v8, v9}, Lcom/google/protobuf/t0;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {v2, v14, v8, v9}, Lcom/google/protobuf/Writer;->writeFixed64(IJ)V

    goto/16 :goto_7e

    :pswitch_146
    invoke-direct {v0, v1, v14, v10}, Lcom/google/protobuf/t0;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_7e

    invoke-static {v1, v8, v9}, Lcom/google/protobuf/t0;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/google/protobuf/Writer;->writeInt32(II)V

    goto/16 :goto_7e

    :pswitch_155
    invoke-direct {v0, v1, v14, v10}, Lcom/google/protobuf/t0;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_7e

    invoke-static {v1, v8, v9}, Lcom/google/protobuf/t0;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {v2, v14, v8, v9}, Lcom/google/protobuf/Writer;->writeUInt64(IJ)V

    goto/16 :goto_7e

    :pswitch_164
    invoke-direct {v0, v1, v14, v10}, Lcom/google/protobuf/t0;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_7e

    invoke-static {v1, v8, v9}, Lcom/google/protobuf/t0;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {v2, v14, v8, v9}, Lcom/google/protobuf/Writer;->writeInt64(IJ)V

    goto/16 :goto_7e

    :pswitch_173
    invoke-direct {v0, v1, v14, v10}, Lcom/google/protobuf/t0;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_7e

    invoke-static {v1, v8, v9}, Lcom/google/protobuf/t0;->oneofFloatAt(Ljava/lang/Object;J)F

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/google/protobuf/Writer;->writeFloat(IF)V

    goto/16 :goto_7e

    :pswitch_182
    invoke-direct {v0, v1, v14, v10}, Lcom/google/protobuf/t0;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_7e

    invoke-static {v1, v8, v9}, Lcom/google/protobuf/t0;->oneofDoubleAt(Ljava/lang/Object;J)D

    move-result-wide v8

    invoke-interface {v2, v14, v8, v9}, Lcom/google/protobuf/Writer;->writeDouble(ID)V

    goto/16 :goto_7e

    :pswitch_191
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v2, v14, v4, v10}, Lcom/google/protobuf/t0;->writeMapHelper(Lcom/google/protobuf/Writer;ILjava/lang/Object;I)V

    goto/16 :goto_7e

    :pswitch_19a
    invoke-direct {v0, v10}, Lcom/google/protobuf/t0;->numberAt(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-direct {v0, v10}, Lcom/google/protobuf/t0;->getMessageFieldSchema(I)Lcom/google/protobuf/l1;

    move-result-object v9

    invoke-static {v4, v8, v2, v9}, Lcom/google/protobuf/SchemaUtil;->writeGroupList(ILjava/util/List;Lcom/google/protobuf/Writer;Lcom/google/protobuf/l1;)V

    goto/16 :goto_7e

    :pswitch_1ad
    invoke-direct {v0, v10}, Lcom/google/protobuf/t0;->numberAt(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    const/4 v13, 0x1

    invoke-static {v4, v8, v2, v13}, Lcom/google/protobuf/SchemaUtil;->writeSInt64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_7e

    :pswitch_1bd
    const/4 v13, 0x1

    invoke-direct {v0, v10}, Lcom/google/protobuf/t0;->numberAt(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2, v13}, Lcom/google/protobuf/SchemaUtil;->writeSInt32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_7e

    :pswitch_1cd
    const/4 v13, 0x1

    invoke-direct {v0, v10}, Lcom/google/protobuf/t0;->numberAt(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2, v13}, Lcom/google/protobuf/SchemaUtil;->writeSFixed64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_7e

    :pswitch_1dd
    const/4 v13, 0x1

    invoke-direct {v0, v10}, Lcom/google/protobuf/t0;->numberAt(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2, v13}, Lcom/google/protobuf/SchemaUtil;->writeSFixed32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_7e

    :pswitch_1ed
    const/4 v13, 0x1

    invoke-direct {v0, v10}, Lcom/google/protobuf/t0;->numberAt(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2, v13}, Lcom/google/protobuf/SchemaUtil;->writeEnumList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_7e

    :pswitch_1fd
    const/4 v13, 0x1

    invoke-direct {v0, v10}, Lcom/google/protobuf/t0;->numberAt(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2, v13}, Lcom/google/protobuf/SchemaUtil;->writeUInt32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_7e

    :pswitch_20d
    const/4 v13, 0x1

    invoke-direct {v0, v10}, Lcom/google/protobuf/t0;->numberAt(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2, v13}, Lcom/google/protobuf/SchemaUtil;->writeBoolList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_7e

    :pswitch_21d
    const/4 v13, 0x1

    invoke-direct {v0, v10}, Lcom/google/protobuf/t0;->numberAt(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2, v13}, Lcom/google/protobuf/SchemaUtil;->writeFixed32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_7e

    :pswitch_22d
    const/4 v13, 0x1

    invoke-direct {v0, v10}, Lcom/google/protobuf/t0;->numberAt(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2, v13}, Lcom/google/protobuf/SchemaUtil;->writeFixed64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_7e

    :pswitch_23d
    const/4 v13, 0x1

    invoke-direct {v0, v10}, Lcom/google/protobuf/t0;->numberAt(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2, v13}, Lcom/google/protobuf/SchemaUtil;->writeInt32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_7e

    :pswitch_24d
    const/4 v13, 0x1

    invoke-direct {v0, v10}, Lcom/google/protobuf/t0;->numberAt(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2, v13}, Lcom/google/protobuf/SchemaUtil;->writeUInt64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_7e

    :pswitch_25d
    const/4 v13, 0x1

    invoke-direct {v0, v10}, Lcom/google/protobuf/t0;->numberAt(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2, v13}, Lcom/google/protobuf/SchemaUtil;->writeInt64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_7e

    :pswitch_26d
    const/4 v13, 0x1

    invoke-direct {v0, v10}, Lcom/google/protobuf/t0;->numberAt(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2, v13}, Lcom/google/protobuf/SchemaUtil;->writeFloatList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_7e

    :pswitch_27d
    const/4 v13, 0x1

    invoke-direct {v0, v10}, Lcom/google/protobuf/t0;->numberAt(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2, v13}, Lcom/google/protobuf/SchemaUtil;->writeDoubleList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_7e

    :pswitch_28d
    invoke-direct {v0, v10}, Lcom/google/protobuf/t0;->numberAt(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    const/4 v13, 0x0

    invoke-static {v4, v8, v2, v13}, Lcom/google/protobuf/SchemaUtil;->writeSInt64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_488

    :pswitch_29d
    const/4 v13, 0x0

    invoke-direct {v0, v10}, Lcom/google/protobuf/t0;->numberAt(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2, v13}, Lcom/google/protobuf/SchemaUtil;->writeSInt32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_488

    :pswitch_2ad
    const/4 v13, 0x0

    invoke-direct {v0, v10}, Lcom/google/protobuf/t0;->numberAt(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2, v13}, Lcom/google/protobuf/SchemaUtil;->writeSFixed64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_488

    :pswitch_2bd
    const/4 v13, 0x0

    invoke-direct {v0, v10}, Lcom/google/protobuf/t0;->numberAt(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2, v13}, Lcom/google/protobuf/SchemaUtil;->writeSFixed32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_488

    :pswitch_2cd
    const/4 v13, 0x0

    invoke-direct {v0, v10}, Lcom/google/protobuf/t0;->numberAt(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2, v13}, Lcom/google/protobuf/SchemaUtil;->writeEnumList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_488

    :pswitch_2dd
    const/4 v13, 0x0

    invoke-direct {v0, v10}, Lcom/google/protobuf/t0;->numberAt(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2, v13}, Lcom/google/protobuf/SchemaUtil;->writeUInt32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_488

    :pswitch_2ed
    invoke-direct {v0, v10}, Lcom/google/protobuf/t0;->numberAt(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2}, Lcom/google/protobuf/SchemaUtil;->writeBytesList(ILjava/util/List;Lcom/google/protobuf/Writer;)V

    goto/16 :goto_7e

    :pswitch_2fc
    invoke-direct {v0, v10}, Lcom/google/protobuf/t0;->numberAt(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-direct {v0, v10}, Lcom/google/protobuf/t0;->getMessageFieldSchema(I)Lcom/google/protobuf/l1;

    move-result-object v9

    invoke-static {v4, v8, v2, v9}, Lcom/google/protobuf/SchemaUtil;->writeMessageList(ILjava/util/List;Lcom/google/protobuf/Writer;Lcom/google/protobuf/l1;)V

    goto/16 :goto_7e

    :pswitch_30f
    invoke-direct {v0, v10}, Lcom/google/protobuf/t0;->numberAt(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2}, Lcom/google/protobuf/SchemaUtil;->writeStringList(ILjava/util/List;Lcom/google/protobuf/Writer;)V

    goto/16 :goto_7e

    :pswitch_31e
    invoke-direct {v0, v10}, Lcom/google/protobuf/t0;->numberAt(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    const/4 v13, 0x0

    invoke-static {v4, v8, v2, v13}, Lcom/google/protobuf/SchemaUtil;->writeBoolList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_488

    :pswitch_32e
    const/4 v13, 0x0

    invoke-direct {v0, v10}, Lcom/google/protobuf/t0;->numberAt(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2, v13}, Lcom/google/protobuf/SchemaUtil;->writeFixed32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_488

    :pswitch_33e
    const/4 v13, 0x0

    invoke-direct {v0, v10}, Lcom/google/protobuf/t0;->numberAt(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2, v13}, Lcom/google/protobuf/SchemaUtil;->writeFixed64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_488

    :pswitch_34e
    const/4 v13, 0x0

    invoke-direct {v0, v10}, Lcom/google/protobuf/t0;->numberAt(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2, v13}, Lcom/google/protobuf/SchemaUtil;->writeInt32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_488

    :pswitch_35e
    const/4 v13, 0x0

    invoke-direct {v0, v10}, Lcom/google/protobuf/t0;->numberAt(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2, v13}, Lcom/google/protobuf/SchemaUtil;->writeUInt64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_488

    :pswitch_36e
    const/4 v13, 0x0

    invoke-direct {v0, v10}, Lcom/google/protobuf/t0;->numberAt(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2, v13}, Lcom/google/protobuf/SchemaUtil;->writeInt64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_488

    :pswitch_37e
    const/4 v13, 0x0

    invoke-direct {v0, v10}, Lcom/google/protobuf/t0;->numberAt(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2, v13}, Lcom/google/protobuf/SchemaUtil;->writeFloatList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_488

    :pswitch_38e
    const/4 v13, 0x0

    invoke-direct {v0, v10}, Lcom/google/protobuf/t0;->numberAt(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2, v13}, Lcom/google/protobuf/SchemaUtil;->writeDoubleList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_488

    :pswitch_39e
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_488

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v10}, Lcom/google/protobuf/t0;->getMessageFieldSchema(I)Lcom/google/protobuf/l1;

    move-result-object v8

    invoke-interface {v2, v14, v4, v8}, Lcom/google/protobuf/Writer;->writeGroup(ILjava/lang/Object;Lcom/google/protobuf/l1;)V

    goto/16 :goto_488

    :pswitch_3af
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_488

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {v2, v14, v8, v9}, Lcom/google/protobuf/Writer;->writeSInt64(IJ)V

    goto/16 :goto_488

    :pswitch_3bc
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_488

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/google/protobuf/Writer;->writeSInt32(II)V

    goto/16 :goto_488

    :pswitch_3c9
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_488

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {v2, v14, v8, v9}, Lcom/google/protobuf/Writer;->writeSFixed64(IJ)V

    goto/16 :goto_488

    :pswitch_3d6
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_488

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/google/protobuf/Writer;->writeSFixed32(II)V

    goto/16 :goto_488

    :pswitch_3e3
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_488

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/google/protobuf/Writer;->writeEnum(II)V

    goto/16 :goto_488

    :pswitch_3f0
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_488

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/google/protobuf/Writer;->writeUInt32(II)V

    goto/16 :goto_488

    :pswitch_3fd
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_488

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/ByteString;

    invoke-interface {v2, v14, v4}, Lcom/google/protobuf/Writer;->writeBytes(ILcom/google/protobuf/ByteString;)V

    goto/16 :goto_488

    :pswitch_40c
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_488

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v10}, Lcom/google/protobuf/t0;->getMessageFieldSchema(I)Lcom/google/protobuf/l1;

    move-result-object v8

    invoke-interface {v2, v14, v4, v8}, Lcom/google/protobuf/Writer;->writeMessage(ILjava/lang/Object;Lcom/google/protobuf/l1;)V

    goto/16 :goto_488

    :pswitch_41d
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_488

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v14, v4, v2}, Lcom/google/protobuf/t0;->writeString(ILjava/lang/Object;Lcom/google/protobuf/Writer;)V

    goto :goto_488

    :pswitch_429
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_488

    invoke-static {v1, v8, v9}, Lcom/google/protobuf/t0;->booleanAt(Ljava/lang/Object;J)Z

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/google/protobuf/Writer;->writeBool(IZ)V

    goto :goto_488

    :pswitch_435
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_488

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/google/protobuf/Writer;->writeFixed32(II)V

    goto :goto_488

    :pswitch_441
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_488

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {v2, v14, v8, v9}, Lcom/google/protobuf/Writer;->writeFixed64(IJ)V

    goto :goto_488

    :pswitch_44d
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_488

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/google/protobuf/Writer;->writeInt32(II)V

    goto :goto_488

    :pswitch_459
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_488

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {v2, v14, v8, v9}, Lcom/google/protobuf/Writer;->writeUInt64(IJ)V

    goto :goto_488

    :pswitch_465
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_488

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {v2, v14, v8, v9}, Lcom/google/protobuf/Writer;->writeInt64(IJ)V

    goto :goto_488

    :pswitch_471
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_488

    invoke-static {v1, v8, v9}, Lcom/google/protobuf/t0;->floatAt(Ljava/lang/Object;J)F

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/google/protobuf/Writer;->writeFloat(IF)V

    goto :goto_488

    :pswitch_47d
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_488

    invoke-static {v1, v8, v9}, Lcom/google/protobuf/t0;->doubleAt(Ljava/lang/Object;J)D

    move-result-wide v8

    invoke-interface {v2, v14, v8, v9}, Lcom/google/protobuf/Writer;->writeDouble(ID)V

    :cond_488
    :goto_488
    add-int/lit8 v10, v10, 0x3

    const v8, 0xfffff

    goto/16 :goto_30

    :cond_48f
    :goto_48f
    if-eqz v5, :cond_4a6

    iget-object v4, v0, Lcom/google/protobuf/t0;->extensionSchema:Lcom/google/protobuf/u;

    invoke-virtual {v4, v2, v5}, Lcom/google/protobuf/u;->serializeExtension(Lcom/google/protobuf/Writer;Ljava/util/Map$Entry;)V

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4a4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    move-object v5, v4

    goto :goto_48f

    :cond_4a4
    const/4 v5, 0x0

    goto :goto_48f

    :cond_4a6
    iget-object v3, v0, Lcom/google/protobuf/t0;->unknownFieldSchema:Lcom/google/protobuf/y1;

    invoke-direct {v0, v3, v1, v2}, Lcom/google/protobuf/t0;->writeUnknownInMessageTo(Lcom/google/protobuf/y1;Ljava/lang/Object;Lcom/google/protobuf/Writer;)V

    return-void

    :pswitch_data_4ac
    .packed-switch 0x0
        :pswitch_47d
        :pswitch_471
        :pswitch_465
        :pswitch_459
        :pswitch_44d
        :pswitch_441
        :pswitch_435
        :pswitch_429
        :pswitch_41d
        :pswitch_40c
        :pswitch_3fd
        :pswitch_3f0
        :pswitch_3e3
        :pswitch_3d6
        :pswitch_3c9
        :pswitch_3bc
        :pswitch_3af
        :pswitch_39e
        :pswitch_38e
        :pswitch_37e
        :pswitch_36e
        :pswitch_35e
        :pswitch_34e
        :pswitch_33e
        :pswitch_32e
        :pswitch_31e
        :pswitch_30f
        :pswitch_2fc
        :pswitch_2ed
        :pswitch_2dd
        :pswitch_2cd
        :pswitch_2bd
        :pswitch_2ad
        :pswitch_29d
        :pswitch_28d
        :pswitch_27d
        :pswitch_26d
        :pswitch_25d
        :pswitch_24d
        :pswitch_23d
        :pswitch_22d
        :pswitch_21d
        :pswitch_20d
        :pswitch_1fd
        :pswitch_1ed
        :pswitch_1dd
        :pswitch_1cd
        :pswitch_1bd
        :pswitch_1ad
        :pswitch_19a
        :pswitch_191
        :pswitch_182
        :pswitch_173
        :pswitch_164
        :pswitch_155
        :pswitch_146
        :pswitch_137
        :pswitch_128
        :pswitch_119
        :pswitch_10a
        :pswitch_f7
        :pswitch_e7
        :pswitch_d9
        :pswitch_cb
        :pswitch_bd
        :pswitch_af
        :pswitch_a1
        :pswitch_93
        :pswitch_81
    .end packed-switch
.end method

.method private writeFieldsInAscendingOrderProto3(Ljava/lang/Object;Lcom/google/protobuf/Writer;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/protobuf/Writer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/protobuf/t0;->hasExtensions:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/google/protobuf/t0;->extensionSchema:Lcom/google/protobuf/u;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/u;->getExtensions(Ljava/lang/Object;)Lcom/google/protobuf/FieldSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/FieldSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1c

    invoke-virtual {v0}, Lcom/google/protobuf/FieldSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    goto :goto_1e

    :cond_1c
    move-object v0, v1

    move-object v2, v0

    :goto_1e
    iget-object v3, p0, Lcom/google/protobuf/t0;->buffer:[I

    array-length v3, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_23
    if-ge v5, v3, :cond_586

    invoke-direct {p0, v5}, Lcom/google/protobuf/t0;->typeAndOffsetAt(I)I

    move-result v6

    invoke-direct {p0, v5}, Lcom/google/protobuf/t0;->numberAt(I)I

    move-result v7

    :goto_2d
    if-eqz v2, :cond_4b

    iget-object v8, p0, Lcom/google/protobuf/t0;->extensionSchema:Lcom/google/protobuf/u;

    invoke-virtual {v8, v2}, Lcom/google/protobuf/u;->extensionNumber(Ljava/util/Map$Entry;)I

    move-result v8

    if-gt v8, v7, :cond_4b

    iget-object v8, p0, Lcom/google/protobuf/t0;->extensionSchema:Lcom/google/protobuf/u;

    invoke-virtual {v8, p2, v2}, Lcom/google/protobuf/u;->serializeExtension(Lcom/google/protobuf/Writer;Ljava/util/Map$Entry;)V

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_49

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    goto :goto_2d

    :cond_49
    move-object v2, v1

    goto :goto_2d

    :cond_4b
    invoke-static {v6}, Lcom/google/protobuf/t0;->type(I)I

    move-result v8

    const/4 v9, 0x1

    packed-switch v8, :pswitch_data_5a2

    goto/16 :goto_582

    :pswitch_55
    invoke-direct {p0, p1, v7, v5}, Lcom/google/protobuf/t0;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_582

    invoke-static {v6}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/b2;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {p0, v5}, Lcom/google/protobuf/t0;->getMessageFieldSchema(I)Lcom/google/protobuf/l1;

    move-result-object v8

    invoke-interface {p2, v7, v6, v8}, Lcom/google/protobuf/Writer;->writeGroup(ILjava/lang/Object;Lcom/google/protobuf/l1;)V

    goto/16 :goto_582

    :pswitch_6c
    invoke-direct {p0, p1, v7, v5}, Lcom/google/protobuf/t0;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_582

    invoke-static {v6}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/t0;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v7, v8, v9}, Lcom/google/protobuf/Writer;->writeSInt64(IJ)V

    goto/16 :goto_582

    :pswitch_7f
    invoke-direct {p0, p1, v7, v5}, Lcom/google/protobuf/t0;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_582

    invoke-static {v6}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/t0;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v6

    invoke-interface {p2, v7, v6}, Lcom/google/protobuf/Writer;->writeSInt32(II)V

    goto/16 :goto_582

    :pswitch_92
    invoke-direct {p0, p1, v7, v5}, Lcom/google/protobuf/t0;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_582

    invoke-static {v6}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/t0;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v7, v8, v9}, Lcom/google/protobuf/Writer;->writeSFixed64(IJ)V

    goto/16 :goto_582

    :pswitch_a5
    invoke-direct {p0, p1, v7, v5}, Lcom/google/protobuf/t0;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_582

    invoke-static {v6}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/t0;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v6

    invoke-interface {p2, v7, v6}, Lcom/google/protobuf/Writer;->writeSFixed32(II)V

    goto/16 :goto_582

    :pswitch_b8
    invoke-direct {p0, p1, v7, v5}, Lcom/google/protobuf/t0;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_582

    invoke-static {v6}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/t0;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v6

    invoke-interface {p2, v7, v6}, Lcom/google/protobuf/Writer;->writeEnum(II)V

    goto/16 :goto_582

    :pswitch_cb
    invoke-direct {p0, p1, v7, v5}, Lcom/google/protobuf/t0;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_582

    invoke-static {v6}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/t0;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v6

    invoke-interface {p2, v7, v6}, Lcom/google/protobuf/Writer;->writeUInt32(II)V

    goto/16 :goto_582

    :pswitch_de
    invoke-direct {p0, p1, v7, v5}, Lcom/google/protobuf/t0;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_582

    invoke-static {v6}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/b2;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/protobuf/ByteString;

    invoke-interface {p2, v7, v6}, Lcom/google/protobuf/Writer;->writeBytes(ILcom/google/protobuf/ByteString;)V

    goto/16 :goto_582

    :pswitch_f3
    invoke-direct {p0, p1, v7, v5}, Lcom/google/protobuf/t0;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_582

    invoke-static {v6}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/b2;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {p0, v5}, Lcom/google/protobuf/t0;->getMessageFieldSchema(I)Lcom/google/protobuf/l1;

    move-result-object v8

    invoke-interface {p2, v7, v6, v8}, Lcom/google/protobuf/Writer;->writeMessage(ILjava/lang/Object;Lcom/google/protobuf/l1;)V

    goto/16 :goto_582

    :pswitch_10a
    invoke-direct {p0, p1, v7, v5}, Lcom/google/protobuf/t0;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_582

    invoke-static {v6}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/b2;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {p0, v7, v6, p2}, Lcom/google/protobuf/t0;->writeString(ILjava/lang/Object;Lcom/google/protobuf/Writer;)V

    goto/16 :goto_582

    :pswitch_11d
    invoke-direct {p0, p1, v7, v5}, Lcom/google/protobuf/t0;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_582

    invoke-static {v6}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/t0;->oneofBooleanAt(Ljava/lang/Object;J)Z

    move-result v6

    invoke-interface {p2, v7, v6}, Lcom/google/protobuf/Writer;->writeBool(IZ)V

    goto/16 :goto_582

    :pswitch_130
    invoke-direct {p0, p1, v7, v5}, Lcom/google/protobuf/t0;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_582

    invoke-static {v6}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/t0;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v6

    invoke-interface {p2, v7, v6}, Lcom/google/protobuf/Writer;->writeFixed32(II)V

    goto/16 :goto_582

    :pswitch_143
    invoke-direct {p0, p1, v7, v5}, Lcom/google/protobuf/t0;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_582

    invoke-static {v6}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/t0;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v7, v8, v9}, Lcom/google/protobuf/Writer;->writeFixed64(IJ)V

    goto/16 :goto_582

    :pswitch_156
    invoke-direct {p0, p1, v7, v5}, Lcom/google/protobuf/t0;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_582

    invoke-static {v6}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/t0;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v6

    invoke-interface {p2, v7, v6}, Lcom/google/protobuf/Writer;->writeInt32(II)V

    goto/16 :goto_582

    :pswitch_169
    invoke-direct {p0, p1, v7, v5}, Lcom/google/protobuf/t0;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_582

    invoke-static {v6}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/t0;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v7, v8, v9}, Lcom/google/protobuf/Writer;->writeUInt64(IJ)V

    goto/16 :goto_582

    :pswitch_17c
    invoke-direct {p0, p1, v7, v5}, Lcom/google/protobuf/t0;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_582

    invoke-static {v6}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/t0;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v7, v8, v9}, Lcom/google/protobuf/Writer;->writeInt64(IJ)V

    goto/16 :goto_582

    :pswitch_18f
    invoke-direct {p0, p1, v7, v5}, Lcom/google/protobuf/t0;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_582

    invoke-static {v6}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/t0;->oneofFloatAt(Ljava/lang/Object;J)F

    move-result v6

    invoke-interface {p2, v7, v6}, Lcom/google/protobuf/Writer;->writeFloat(IF)V

    goto/16 :goto_582

    :pswitch_1a2
    invoke-direct {p0, p1, v7, v5}, Lcom/google/protobuf/t0;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_582

    invoke-static {v6}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/t0;->oneofDoubleAt(Ljava/lang/Object;J)D

    move-result-wide v8

    invoke-interface {p2, v7, v8, v9}, Lcom/google/protobuf/Writer;->writeDouble(ID)V

    goto/16 :goto_582

    :pswitch_1b5
    invoke-static {v6}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/b2;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {p0, p2, v7, v6, v5}, Lcom/google/protobuf/t0;->writeMapHelper(Lcom/google/protobuf/Writer;ILjava/lang/Object;I)V

    goto/16 :goto_582

    :pswitch_1c2
    invoke-direct {p0, v5}, Lcom/google/protobuf/t0;->numberAt(I)I

    move-result v7

    invoke-static {v6}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/b2;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-direct {p0, v5}, Lcom/google/protobuf/t0;->getMessageFieldSchema(I)Lcom/google/protobuf/l1;

    move-result-object v8

    invoke-static {v7, v6, p2, v8}, Lcom/google/protobuf/SchemaUtil;->writeGroupList(ILjava/util/List;Lcom/google/protobuf/Writer;Lcom/google/protobuf/l1;)V

    goto/16 :goto_582

    :pswitch_1d9
    invoke-direct {p0, v5}, Lcom/google/protobuf/t0;->numberAt(I)I

    move-result v7

    invoke-static {v6}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/b2;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v9}, Lcom/google/protobuf/SchemaUtil;->writeSInt64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_582

    :pswitch_1ec
    invoke-direct {p0, v5}, Lcom/google/protobuf/t0;->numberAt(I)I

    move-result v7

    invoke-static {v6}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/b2;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v9}, Lcom/google/protobuf/SchemaUtil;->writeSInt32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_582

    :pswitch_1ff
    invoke-direct {p0, v5}, Lcom/google/protobuf/t0;->numberAt(I)I

    move-result v7

    invoke-static {v6}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/b2;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v9}, Lcom/google/protobuf/SchemaUtil;->writeSFixed64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_582

    :pswitch_212
    invoke-direct {p0, v5}, Lcom/google/protobuf/t0;->numberAt(I)I

    move-result v7

    invoke-static {v6}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/b2;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v9}, Lcom/google/protobuf/SchemaUtil;->writeSFixed32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_582

    :pswitch_225
    invoke-direct {p0, v5}, Lcom/google/protobuf/t0;->numberAt(I)I

    move-result v7

    invoke-static {v6}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/b2;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v9}, Lcom/google/protobuf/SchemaUtil;->writeEnumList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_582

    :pswitch_238
    invoke-direct {p0, v5}, Lcom/google/protobuf/t0;->numberAt(I)I

    move-result v7

    invoke-static {v6}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/b2;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v9}, Lcom/google/protobuf/SchemaUtil;->writeUInt32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_582

    :pswitch_24b
    invoke-direct {p0, v5}, Lcom/google/protobuf/t0;->numberAt(I)I

    move-result v7

    invoke-static {v6}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/b2;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v9}, Lcom/google/protobuf/SchemaUtil;->writeBoolList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_582

    :pswitch_25e
    invoke-direct {p0, v5}, Lcom/google/protobuf/t0;->numberAt(I)I

    move-result v7

    invoke-static {v6}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/b2;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v9}, Lcom/google/protobuf/SchemaUtil;->writeFixed32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_582

    :pswitch_271
    invoke-direct {p0, v5}, Lcom/google/protobuf/t0;->numberAt(I)I

    move-result v7

    invoke-static {v6}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/b2;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v9}, Lcom/google/protobuf/SchemaUtil;->writeFixed64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_582

    :pswitch_284
    invoke-direct {p0, v5}, Lcom/google/protobuf/t0;->numberAt(I)I

    move-result v7

    invoke-static {v6}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/b2;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v9}, Lcom/google/protobuf/SchemaUtil;->writeInt32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_582

    :pswitch_297
    invoke-direct {p0, v5}, Lcom/google/protobuf/t0;->numberAt(I)I

    move-result v7

    invoke-static {v6}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/b2;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v9}, Lcom/google/protobuf/SchemaUtil;->writeUInt64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_582

    :pswitch_2aa
    invoke-direct {p0, v5}, Lcom/google/protobuf/t0;->numberAt(I)I

    move-result v7

    invoke-static {v6}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/b2;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v9}, Lcom/google/protobuf/SchemaUtil;->writeInt64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_582

    :pswitch_2bd
    invoke-direct {p0, v5}, Lcom/google/protobuf/t0;->numberAt(I)I

    move-result v7

    invoke-static {v6}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/b2;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v9}, Lcom/google/protobuf/SchemaUtil;->writeFloatList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_582

    :pswitch_2d0
    invoke-direct {p0, v5}, Lcom/google/protobuf/t0;->numberAt(I)I

    move-result v7

    invoke-static {v6}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/b2;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v9}, Lcom/google/protobuf/SchemaUtil;->writeDoubleList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_582

    :pswitch_2e3
    invoke-direct {p0, v5}, Lcom/google/protobuf/t0;->numberAt(I)I

    move-result v7

    invoke-static {v6}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/b2;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v4}, Lcom/google/protobuf/SchemaUtil;->writeSInt64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_582

    :pswitch_2f6
    invoke-direct {p0, v5}, Lcom/google/protobuf/t0;->numberAt(I)I

    move-result v7

    invoke-static {v6}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/b2;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v4}, Lcom/google/protobuf/SchemaUtil;->writeSInt32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_582

    :pswitch_309
    invoke-direct {p0, v5}, Lcom/google/protobuf/t0;->numberAt(I)I

    move-result v7

    invoke-static {v6}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/b2;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v4}, Lcom/google/protobuf/SchemaUtil;->writeSFixed64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_582

    :pswitch_31c
    invoke-direct {p0, v5}, Lcom/google/protobuf/t0;->numberAt(I)I

    move-result v7

    invoke-static {v6}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/b2;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v4}, Lcom/google/protobuf/SchemaUtil;->writeSFixed32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_582

    :pswitch_32f
    invoke-direct {p0, v5}, Lcom/google/protobuf/t0;->numberAt(I)I

    move-result v7

    invoke-static {v6}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/b2;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v4}, Lcom/google/protobuf/SchemaUtil;->writeEnumList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_582

    :pswitch_342
    invoke-direct {p0, v5}, Lcom/google/protobuf/t0;->numberAt(I)I

    move-result v7

    invoke-static {v6}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/b2;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v4}, Lcom/google/protobuf/SchemaUtil;->writeUInt32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_582

    :pswitch_355
    invoke-direct {p0, v5}, Lcom/google/protobuf/t0;->numberAt(I)I

    move-result v7

    invoke-static {v6}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/b2;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2}, Lcom/google/protobuf/SchemaUtil;->writeBytesList(ILjava/util/List;Lcom/google/protobuf/Writer;)V

    goto/16 :goto_582

    :pswitch_368
    invoke-direct {p0, v5}, Lcom/google/protobuf/t0;->numberAt(I)I

    move-result v7

    invoke-static {v6}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/b2;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-direct {p0, v5}, Lcom/google/protobuf/t0;->getMessageFieldSchema(I)Lcom/google/protobuf/l1;

    move-result-object v8

    invoke-static {v7, v6, p2, v8}, Lcom/google/protobuf/SchemaUtil;->writeMessageList(ILjava/util/List;Lcom/google/protobuf/Writer;Lcom/google/protobuf/l1;)V

    goto/16 :goto_582

    :pswitch_37f
    invoke-direct {p0, v5}, Lcom/google/protobuf/t0;->numberAt(I)I

    move-result v7

    invoke-static {v6}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/b2;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2}, Lcom/google/protobuf/SchemaUtil;->writeStringList(ILjava/util/List;Lcom/google/protobuf/Writer;)V

    goto/16 :goto_582

    :pswitch_392
    invoke-direct {p0, v5}, Lcom/google/protobuf/t0;->numberAt(I)I

    move-result v7

    invoke-static {v6}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/b2;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v4}, Lcom/google/protobuf/SchemaUtil;->writeBoolList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_582

    :pswitch_3a5
    invoke-direct {p0, v5}, Lcom/google/protobuf/t0;->numberAt(I)I

    move-result v7

    invoke-static {v6}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/b2;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v4}, Lcom/google/protobuf/SchemaUtil;->writeFixed32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_582

    :pswitch_3b8
    invoke-direct {p0, v5}, Lcom/google/protobuf/t0;->numberAt(I)I

    move-result v7

    invoke-static {v6}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/b2;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v4}, Lcom/google/protobuf/SchemaUtil;->writeFixed64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_582

    :pswitch_3cb
    invoke-direct {p0, v5}, Lcom/google/protobuf/t0;->numberAt(I)I

    move-result v7

    invoke-static {v6}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/b2;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v4}, Lcom/google/protobuf/SchemaUtil;->writeInt32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_582

    :pswitch_3de
    invoke-direct {p0, v5}, Lcom/google/protobuf/t0;->numberAt(I)I

    move-result v7

    invoke-static {v6}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/b2;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v4}, Lcom/google/protobuf/SchemaUtil;->writeUInt64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_582

    :pswitch_3f1
    invoke-direct {p0, v5}, Lcom/google/protobuf/t0;->numberAt(I)I

    move-result v7

    invoke-static {v6}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/b2;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v4}, Lcom/google/protobuf/SchemaUtil;->writeInt64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_582

    :pswitch_404
    invoke-direct {p0, v5}, Lcom/google/protobuf/t0;->numberAt(I)I

    move-result v7

    invoke-static {v6}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/b2;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v4}, Lcom/google/protobuf/SchemaUtil;->writeFloatList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_582

    :pswitch_417
    invoke-direct {p0, v5}, Lcom/google/protobuf/t0;->numberAt(I)I

    move-result v7

    invoke-static {v6}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/b2;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v4}, Lcom/google/protobuf/SchemaUtil;->writeDoubleList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_582

    :pswitch_42a
    invoke-direct {p0, p1, v5}, Lcom/google/protobuf/t0;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_582

    invoke-static {v6}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/b2;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {p0, v5}, Lcom/google/protobuf/t0;->getMessageFieldSchema(I)Lcom/google/protobuf/l1;

    move-result-object v8

    invoke-interface {p2, v7, v6, v8}, Lcom/google/protobuf/Writer;->writeGroup(ILjava/lang/Object;Lcom/google/protobuf/l1;)V

    goto/16 :goto_582

    :pswitch_441
    invoke-direct {p0, p1, v5}, Lcom/google/protobuf/t0;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_582

    invoke-static {v6}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/t0;->longAt(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v7, v8, v9}, Lcom/google/protobuf/Writer;->writeSInt64(IJ)V

    goto/16 :goto_582

    :pswitch_454
    invoke-direct {p0, p1, v5}, Lcom/google/protobuf/t0;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_582

    invoke-static {v6}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/t0;->intAt(Ljava/lang/Object;J)I

    move-result v6

    invoke-interface {p2, v7, v6}, Lcom/google/protobuf/Writer;->writeSInt32(II)V

    goto/16 :goto_582

    :pswitch_467
    invoke-direct {p0, p1, v5}, Lcom/google/protobuf/t0;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_582

    invoke-static {v6}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/t0;->longAt(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v7, v8, v9}, Lcom/google/protobuf/Writer;->writeSFixed64(IJ)V

    goto/16 :goto_582

    :pswitch_47a
    invoke-direct {p0, p1, v5}, Lcom/google/protobuf/t0;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_582

    invoke-static {v6}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/t0;->intAt(Ljava/lang/Object;J)I

    move-result v6

    invoke-interface {p2, v7, v6}, Lcom/google/protobuf/Writer;->writeSFixed32(II)V

    goto/16 :goto_582

    :pswitch_48d
    invoke-direct {p0, p1, v5}, Lcom/google/protobuf/t0;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_582

    invoke-static {v6}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/t0;->intAt(Ljava/lang/Object;J)I

    move-result v6

    invoke-interface {p2, v7, v6}, Lcom/google/protobuf/Writer;->writeEnum(II)V

    goto/16 :goto_582

    :pswitch_4a0
    invoke-direct {p0, p1, v5}, Lcom/google/protobuf/t0;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_582

    invoke-static {v6}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/t0;->intAt(Ljava/lang/Object;J)I

    move-result v6

    invoke-interface {p2, v7, v6}, Lcom/google/protobuf/Writer;->writeUInt32(II)V

    goto/16 :goto_582

    :pswitch_4b3
    invoke-direct {p0, p1, v5}, Lcom/google/protobuf/t0;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_582

    invoke-static {v6}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/b2;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/protobuf/ByteString;

    invoke-interface {p2, v7, v6}, Lcom/google/protobuf/Writer;->writeBytes(ILcom/google/protobuf/ByteString;)V

    goto/16 :goto_582

    :pswitch_4c8
    invoke-direct {p0, p1, v5}, Lcom/google/protobuf/t0;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_582

    invoke-static {v6}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/b2;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {p0, v5}, Lcom/google/protobuf/t0;->getMessageFieldSchema(I)Lcom/google/protobuf/l1;

    move-result-object v8

    invoke-interface {p2, v7, v6, v8}, Lcom/google/protobuf/Writer;->writeMessage(ILjava/lang/Object;Lcom/google/protobuf/l1;)V

    goto/16 :goto_582

    :pswitch_4df
    invoke-direct {p0, p1, v5}, Lcom/google/protobuf/t0;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_582

    invoke-static {v6}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/b2;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {p0, v7, v6, p2}, Lcom/google/protobuf/t0;->writeString(ILjava/lang/Object;Lcom/google/protobuf/Writer;)V

    goto/16 :goto_582

    :pswitch_4f2
    invoke-direct {p0, p1, v5}, Lcom/google/protobuf/t0;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_582

    invoke-static {v6}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/t0;->booleanAt(Ljava/lang/Object;J)Z

    move-result v6

    invoke-interface {p2, v7, v6}, Lcom/google/protobuf/Writer;->writeBool(IZ)V

    goto/16 :goto_582

    :pswitch_505
    invoke-direct {p0, p1, v5}, Lcom/google/protobuf/t0;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_582

    invoke-static {v6}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/t0;->intAt(Ljava/lang/Object;J)I

    move-result v6

    invoke-interface {p2, v7, v6}, Lcom/google/protobuf/Writer;->writeFixed32(II)V

    goto :goto_582

    :pswitch_517
    invoke-direct {p0, p1, v5}, Lcom/google/protobuf/t0;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_582

    invoke-static {v6}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/t0;->longAt(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v7, v8, v9}, Lcom/google/protobuf/Writer;->writeFixed64(IJ)V

    goto :goto_582

    :pswitch_529
    invoke-direct {p0, p1, v5}, Lcom/google/protobuf/t0;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_582

    invoke-static {v6}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/t0;->intAt(Ljava/lang/Object;J)I

    move-result v6

    invoke-interface {p2, v7, v6}, Lcom/google/protobuf/Writer;->writeInt32(II)V

    goto :goto_582

    :pswitch_53b
    invoke-direct {p0, p1, v5}, Lcom/google/protobuf/t0;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_582

    invoke-static {v6}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/t0;->longAt(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v7, v8, v9}, Lcom/google/protobuf/Writer;->writeUInt64(IJ)V

    goto :goto_582

    :pswitch_54d
    invoke-direct {p0, p1, v5}, Lcom/google/protobuf/t0;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_582

    invoke-static {v6}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/t0;->longAt(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v7, v8, v9}, Lcom/google/protobuf/Writer;->writeInt64(IJ)V

    goto :goto_582

    :pswitch_55f
    invoke-direct {p0, p1, v5}, Lcom/google/protobuf/t0;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_582

    invoke-static {v6}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/t0;->floatAt(Ljava/lang/Object;J)F

    move-result v6

    invoke-interface {p2, v7, v6}, Lcom/google/protobuf/Writer;->writeFloat(IF)V

    goto :goto_582

    :pswitch_571
    invoke-direct {p0, p1, v5}, Lcom/google/protobuf/t0;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_582

    invoke-static {v6}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/t0;->doubleAt(Ljava/lang/Object;J)D

    move-result-wide v8

    invoke-interface {p2, v7, v8, v9}, Lcom/google/protobuf/Writer;->writeDouble(ID)V

    :cond_582
    :goto_582
    add-int/lit8 v5, v5, 0x3

    goto/16 :goto_23

    :cond_586
    :goto_586
    if-eqz v2, :cond_59c

    iget-object v3, p0, Lcom/google/protobuf/t0;->extensionSchema:Lcom/google/protobuf/u;

    invoke-virtual {v3, p2, v2}, Lcom/google/protobuf/u;->serializeExtension(Lcom/google/protobuf/Writer;Ljava/util/Map$Entry;)V

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_59a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    goto :goto_586

    :cond_59a
    move-object v2, v1

    goto :goto_586

    :cond_59c
    iget-object v0, p0, Lcom/google/protobuf/t0;->unknownFieldSchema:Lcom/google/protobuf/y1;

    invoke-direct {p0, v0, p1, p2}, Lcom/google/protobuf/t0;->writeUnknownInMessageTo(Lcom/google/protobuf/y1;Ljava/lang/Object;Lcom/google/protobuf/Writer;)V

    return-void

    :pswitch_data_5a2
    .packed-switch 0x0
        :pswitch_571
        :pswitch_55f
        :pswitch_54d
        :pswitch_53b
        :pswitch_529
        :pswitch_517
        :pswitch_505
        :pswitch_4f2
        :pswitch_4df
        :pswitch_4c8
        :pswitch_4b3
        :pswitch_4a0
        :pswitch_48d
        :pswitch_47a
        :pswitch_467
        :pswitch_454
        :pswitch_441
        :pswitch_42a
        :pswitch_417
        :pswitch_404
        :pswitch_3f1
        :pswitch_3de
        :pswitch_3cb
        :pswitch_3b8
        :pswitch_3a5
        :pswitch_392
        :pswitch_37f
        :pswitch_368
        :pswitch_355
        :pswitch_342
        :pswitch_32f
        :pswitch_31c
        :pswitch_309
        :pswitch_2f6
        :pswitch_2e3
        :pswitch_2d0
        :pswitch_2bd
        :pswitch_2aa
        :pswitch_297
        :pswitch_284
        :pswitch_271
        :pswitch_25e
        :pswitch_24b
        :pswitch_238
        :pswitch_225
        :pswitch_212
        :pswitch_1ff
        :pswitch_1ec
        :pswitch_1d9
        :pswitch_1c2
        :pswitch_1b5
        :pswitch_1a2
        :pswitch_18f
        :pswitch_17c
        :pswitch_169
        :pswitch_156
        :pswitch_143
        :pswitch_130
        :pswitch_11d
        :pswitch_10a
        :pswitch_f3
        :pswitch_de
        :pswitch_cb
        :pswitch_b8
        :pswitch_a5
        :pswitch_92
        :pswitch_7f
        :pswitch_6c
        :pswitch_55
    .end packed-switch
.end method

.method private writeFieldsInDescendingOrder(Ljava/lang/Object;Lcom/google/protobuf/Writer;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/protobuf/Writer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/t0;->unknownFieldSchema:Lcom/google/protobuf/y1;

    invoke-direct {p0, v0, p1, p2}, Lcom/google/protobuf/t0;->writeUnknownInMessageTo(Lcom/google/protobuf/y1;Ljava/lang/Object;Lcom/google/protobuf/Writer;)V

    iget-boolean v0, p0, Lcom/google/protobuf/t0;->hasExtensions:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/google/protobuf/t0;->extensionSchema:Lcom/google/protobuf/u;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/u;->getExtensions(Ljava/lang/Object;)Lcom/google/protobuf/FieldSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/FieldSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_21

    invoke-virtual {v0}, Lcom/google/protobuf/FieldSet;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    goto :goto_23

    :cond_21
    move-object v0, v1

    move-object v2, v0

    :goto_23
    iget-object v3, p0, Lcom/google/protobuf/t0;->buffer:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x3

    :goto_28
    if-ltz v3, :cond_58c

    invoke-direct {p0, v3}, Lcom/google/protobuf/t0;->typeAndOffsetAt(I)I

    move-result v4

    invoke-direct {p0, v3}, Lcom/google/protobuf/t0;->numberAt(I)I

    move-result v5

    :goto_32
    if-eqz v2, :cond_50

    iget-object v6, p0, Lcom/google/protobuf/t0;->extensionSchema:Lcom/google/protobuf/u;

    invoke-virtual {v6, v2}, Lcom/google/protobuf/u;->extensionNumber(Ljava/util/Map$Entry;)I

    move-result v6

    if-le v6, v5, :cond_50

    iget-object v6, p0, Lcom/google/protobuf/t0;->extensionSchema:Lcom/google/protobuf/u;

    invoke-virtual {v6, p2, v2}, Lcom/google/protobuf/u;->serializeExtension(Lcom/google/protobuf/Writer;Ljava/util/Map$Entry;)V

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    goto :goto_32

    :cond_4e
    move-object v2, v1

    goto :goto_32

    :cond_50
    invoke-static {v4}, Lcom/google/protobuf/t0;->type(I)I

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    packed-switch v6, :pswitch_data_5a4

    goto/16 :goto_588

    :pswitch_5b
    invoke-direct {p0, p1, v5, v3}, Lcom/google/protobuf/t0;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_588

    invoke-static {v4}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/b2;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v3}, Lcom/google/protobuf/t0;->getMessageFieldSchema(I)Lcom/google/protobuf/l1;

    move-result-object v6

    invoke-interface {p2, v5, v4, v6}, Lcom/google/protobuf/Writer;->writeGroup(ILjava/lang/Object;Lcom/google/protobuf/l1;)V

    goto/16 :goto_588

    :pswitch_72
    invoke-direct {p0, p1, v5, v3}, Lcom/google/protobuf/t0;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_588

    invoke-static {v4}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/t0;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Lcom/google/protobuf/Writer;->writeSInt64(IJ)V

    goto/16 :goto_588

    :pswitch_85
    invoke-direct {p0, p1, v5, v3}, Lcom/google/protobuf/t0;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_588

    invoke-static {v4}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/t0;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v5, v4}, Lcom/google/protobuf/Writer;->writeSInt32(II)V

    goto/16 :goto_588

    :pswitch_98
    invoke-direct {p0, p1, v5, v3}, Lcom/google/protobuf/t0;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_588

    invoke-static {v4}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/t0;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Lcom/google/protobuf/Writer;->writeSFixed64(IJ)V

    goto/16 :goto_588

    :pswitch_ab
    invoke-direct {p0, p1, v5, v3}, Lcom/google/protobuf/t0;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_588

    invoke-static {v4}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/t0;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v5, v4}, Lcom/google/protobuf/Writer;->writeSFixed32(II)V

    goto/16 :goto_588

    :pswitch_be
    invoke-direct {p0, p1, v5, v3}, Lcom/google/protobuf/t0;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_588

    invoke-static {v4}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/t0;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v5, v4}, Lcom/google/protobuf/Writer;->writeEnum(II)V

    goto/16 :goto_588

    :pswitch_d1
    invoke-direct {p0, p1, v5, v3}, Lcom/google/protobuf/t0;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_588

    invoke-static {v4}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/t0;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v5, v4}, Lcom/google/protobuf/Writer;->writeUInt32(II)V

    goto/16 :goto_588

    :pswitch_e4
    invoke-direct {p0, p1, v5, v3}, Lcom/google/protobuf/t0;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_588

    invoke-static {v4}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/b2;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/ByteString;

    invoke-interface {p2, v5, v4}, Lcom/google/protobuf/Writer;->writeBytes(ILcom/google/protobuf/ByteString;)V

    goto/16 :goto_588

    :pswitch_f9
    invoke-direct {p0, p1, v5, v3}, Lcom/google/protobuf/t0;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_588

    invoke-static {v4}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/b2;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v3}, Lcom/google/protobuf/t0;->getMessageFieldSchema(I)Lcom/google/protobuf/l1;

    move-result-object v6

    invoke-interface {p2, v5, v4, v6}, Lcom/google/protobuf/Writer;->writeMessage(ILjava/lang/Object;Lcom/google/protobuf/l1;)V

    goto/16 :goto_588

    :pswitch_110
    invoke-direct {p0, p1, v5, v3}, Lcom/google/protobuf/t0;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_588

    invoke-static {v4}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/b2;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v5, v4, p2}, Lcom/google/protobuf/t0;->writeString(ILjava/lang/Object;Lcom/google/protobuf/Writer;)V

    goto/16 :goto_588

    :pswitch_123
    invoke-direct {p0, p1, v5, v3}, Lcom/google/protobuf/t0;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_588

    invoke-static {v4}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/t0;->oneofBooleanAt(Ljava/lang/Object;J)Z

    move-result v4

    invoke-interface {p2, v5, v4}, Lcom/google/protobuf/Writer;->writeBool(IZ)V

    goto/16 :goto_588

    :pswitch_136
    invoke-direct {p0, p1, v5, v3}, Lcom/google/protobuf/t0;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_588

    invoke-static {v4}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/t0;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v5, v4}, Lcom/google/protobuf/Writer;->writeFixed32(II)V

    goto/16 :goto_588

    :pswitch_149
    invoke-direct {p0, p1, v5, v3}, Lcom/google/protobuf/t0;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_588

    invoke-static {v4}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/t0;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Lcom/google/protobuf/Writer;->writeFixed64(IJ)V

    goto/16 :goto_588

    :pswitch_15c
    invoke-direct {p0, p1, v5, v3}, Lcom/google/protobuf/t0;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_588

    invoke-static {v4}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/t0;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v5, v4}, Lcom/google/protobuf/Writer;->writeInt32(II)V

    goto/16 :goto_588

    :pswitch_16f
    invoke-direct {p0, p1, v5, v3}, Lcom/google/protobuf/t0;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_588

    invoke-static {v4}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/t0;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Lcom/google/protobuf/Writer;->writeUInt64(IJ)V

    goto/16 :goto_588

    :pswitch_182
    invoke-direct {p0, p1, v5, v3}, Lcom/google/protobuf/t0;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_588

    invoke-static {v4}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/t0;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Lcom/google/protobuf/Writer;->writeInt64(IJ)V

    goto/16 :goto_588

    :pswitch_195
    invoke-direct {p0, p1, v5, v3}, Lcom/google/protobuf/t0;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_588

    invoke-static {v4}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/t0;->oneofFloatAt(Ljava/lang/Object;J)F

    move-result v4

    invoke-interface {p2, v5, v4}, Lcom/google/protobuf/Writer;->writeFloat(IF)V

    goto/16 :goto_588

    :pswitch_1a8
    invoke-direct {p0, p1, v5, v3}, Lcom/google/protobuf/t0;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_588

    invoke-static {v4}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/t0;->oneofDoubleAt(Ljava/lang/Object;J)D

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Lcom/google/protobuf/Writer;->writeDouble(ID)V

    goto/16 :goto_588

    :pswitch_1bb
    invoke-static {v4}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/b2;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, p2, v5, v4, v3}, Lcom/google/protobuf/t0;->writeMapHelper(Lcom/google/protobuf/Writer;ILjava/lang/Object;I)V

    goto/16 :goto_588

    :pswitch_1c8
    invoke-direct {p0, v3}, Lcom/google/protobuf/t0;->numberAt(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/b2;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-direct {p0, v3}, Lcom/google/protobuf/t0;->getMessageFieldSchema(I)Lcom/google/protobuf/l1;

    move-result-object v6

    invoke-static {v5, v4, p2, v6}, Lcom/google/protobuf/SchemaUtil;->writeGroupList(ILjava/util/List;Lcom/google/protobuf/Writer;Lcom/google/protobuf/l1;)V

    goto/16 :goto_588

    :pswitch_1df
    invoke-direct {p0, v3}, Lcom/google/protobuf/t0;->numberAt(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/b2;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v7}, Lcom/google/protobuf/SchemaUtil;->writeSInt64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_588

    :pswitch_1f2
    invoke-direct {p0, v3}, Lcom/google/protobuf/t0;->numberAt(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/b2;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v7}, Lcom/google/protobuf/SchemaUtil;->writeSInt32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_588

    :pswitch_205
    invoke-direct {p0, v3}, Lcom/google/protobuf/t0;->numberAt(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/b2;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v7}, Lcom/google/protobuf/SchemaUtil;->writeSFixed64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_588

    :pswitch_218
    invoke-direct {p0, v3}, Lcom/google/protobuf/t0;->numberAt(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/b2;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v7}, Lcom/google/protobuf/SchemaUtil;->writeSFixed32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_588

    :pswitch_22b
    invoke-direct {p0, v3}, Lcom/google/protobuf/t0;->numberAt(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/b2;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v7}, Lcom/google/protobuf/SchemaUtil;->writeEnumList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_588

    :pswitch_23e
    invoke-direct {p0, v3}, Lcom/google/protobuf/t0;->numberAt(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/b2;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v7}, Lcom/google/protobuf/SchemaUtil;->writeUInt32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_588

    :pswitch_251
    invoke-direct {p0, v3}, Lcom/google/protobuf/t0;->numberAt(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/b2;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v7}, Lcom/google/protobuf/SchemaUtil;->writeBoolList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_588

    :pswitch_264
    invoke-direct {p0, v3}, Lcom/google/protobuf/t0;->numberAt(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/b2;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v7}, Lcom/google/protobuf/SchemaUtil;->writeFixed32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_588

    :pswitch_277
    invoke-direct {p0, v3}, Lcom/google/protobuf/t0;->numberAt(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/b2;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v7}, Lcom/google/protobuf/SchemaUtil;->writeFixed64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_588

    :pswitch_28a
    invoke-direct {p0, v3}, Lcom/google/protobuf/t0;->numberAt(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/b2;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v7}, Lcom/google/protobuf/SchemaUtil;->writeInt32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_588

    :pswitch_29d
    invoke-direct {p0, v3}, Lcom/google/protobuf/t0;->numberAt(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/b2;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v7}, Lcom/google/protobuf/SchemaUtil;->writeUInt64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_588

    :pswitch_2b0
    invoke-direct {p0, v3}, Lcom/google/protobuf/t0;->numberAt(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/b2;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v7}, Lcom/google/protobuf/SchemaUtil;->writeInt64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_588

    :pswitch_2c3
    invoke-direct {p0, v3}, Lcom/google/protobuf/t0;->numberAt(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/b2;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v7}, Lcom/google/protobuf/SchemaUtil;->writeFloatList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_588

    :pswitch_2d6
    invoke-direct {p0, v3}, Lcom/google/protobuf/t0;->numberAt(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/b2;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v7}, Lcom/google/protobuf/SchemaUtil;->writeDoubleList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_588

    :pswitch_2e9
    invoke-direct {p0, v3}, Lcom/google/protobuf/t0;->numberAt(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/b2;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v8}, Lcom/google/protobuf/SchemaUtil;->writeSInt64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_588

    :pswitch_2fc
    invoke-direct {p0, v3}, Lcom/google/protobuf/t0;->numberAt(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/b2;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v8}, Lcom/google/protobuf/SchemaUtil;->writeSInt32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_588

    :pswitch_30f
    invoke-direct {p0, v3}, Lcom/google/protobuf/t0;->numberAt(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/b2;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v8}, Lcom/google/protobuf/SchemaUtil;->writeSFixed64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_588

    :pswitch_322
    invoke-direct {p0, v3}, Lcom/google/protobuf/t0;->numberAt(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/b2;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v8}, Lcom/google/protobuf/SchemaUtil;->writeSFixed32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_588

    :pswitch_335
    invoke-direct {p0, v3}, Lcom/google/protobuf/t0;->numberAt(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/b2;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v8}, Lcom/google/protobuf/SchemaUtil;->writeEnumList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_588

    :pswitch_348
    invoke-direct {p0, v3}, Lcom/google/protobuf/t0;->numberAt(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/b2;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v8}, Lcom/google/protobuf/SchemaUtil;->writeUInt32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_588

    :pswitch_35b
    invoke-direct {p0, v3}, Lcom/google/protobuf/t0;->numberAt(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/b2;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2}, Lcom/google/protobuf/SchemaUtil;->writeBytesList(ILjava/util/List;Lcom/google/protobuf/Writer;)V

    goto/16 :goto_588

    :pswitch_36e
    invoke-direct {p0, v3}, Lcom/google/protobuf/t0;->numberAt(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/b2;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-direct {p0, v3}, Lcom/google/protobuf/t0;->getMessageFieldSchema(I)Lcom/google/protobuf/l1;

    move-result-object v6

    invoke-static {v5, v4, p2, v6}, Lcom/google/protobuf/SchemaUtil;->writeMessageList(ILjava/util/List;Lcom/google/protobuf/Writer;Lcom/google/protobuf/l1;)V

    goto/16 :goto_588

    :pswitch_385
    invoke-direct {p0, v3}, Lcom/google/protobuf/t0;->numberAt(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/b2;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2}, Lcom/google/protobuf/SchemaUtil;->writeStringList(ILjava/util/List;Lcom/google/protobuf/Writer;)V

    goto/16 :goto_588

    :pswitch_398
    invoke-direct {p0, v3}, Lcom/google/protobuf/t0;->numberAt(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/b2;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v8}, Lcom/google/protobuf/SchemaUtil;->writeBoolList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_588

    :pswitch_3ab
    invoke-direct {p0, v3}, Lcom/google/protobuf/t0;->numberAt(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/b2;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v8}, Lcom/google/protobuf/SchemaUtil;->writeFixed32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_588

    :pswitch_3be
    invoke-direct {p0, v3}, Lcom/google/protobuf/t0;->numberAt(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/b2;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v8}, Lcom/google/protobuf/SchemaUtil;->writeFixed64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_588

    :pswitch_3d1
    invoke-direct {p0, v3}, Lcom/google/protobuf/t0;->numberAt(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/b2;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v8}, Lcom/google/protobuf/SchemaUtil;->writeInt32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_588

    :pswitch_3e4
    invoke-direct {p0, v3}, Lcom/google/protobuf/t0;->numberAt(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/b2;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v8}, Lcom/google/protobuf/SchemaUtil;->writeUInt64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_588

    :pswitch_3f7
    invoke-direct {p0, v3}, Lcom/google/protobuf/t0;->numberAt(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/b2;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v8}, Lcom/google/protobuf/SchemaUtil;->writeInt64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_588

    :pswitch_40a
    invoke-direct {p0, v3}, Lcom/google/protobuf/t0;->numberAt(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/b2;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v8}, Lcom/google/protobuf/SchemaUtil;->writeFloatList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_588

    :pswitch_41d
    invoke-direct {p0, v3}, Lcom/google/protobuf/t0;->numberAt(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/b2;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v8}, Lcom/google/protobuf/SchemaUtil;->writeDoubleList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_588

    :pswitch_430
    invoke-direct {p0, p1, v3}, Lcom/google/protobuf/t0;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_588

    invoke-static {v4}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/b2;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v3}, Lcom/google/protobuf/t0;->getMessageFieldSchema(I)Lcom/google/protobuf/l1;

    move-result-object v6

    invoke-interface {p2, v5, v4, v6}, Lcom/google/protobuf/Writer;->writeGroup(ILjava/lang/Object;Lcom/google/protobuf/l1;)V

    goto/16 :goto_588

    :pswitch_447
    invoke-direct {p0, p1, v3}, Lcom/google/protobuf/t0;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_588

    invoke-static {v4}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/t0;->longAt(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Lcom/google/protobuf/Writer;->writeSInt64(IJ)V

    goto/16 :goto_588

    :pswitch_45a
    invoke-direct {p0, p1, v3}, Lcom/google/protobuf/t0;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_588

    invoke-static {v4}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/t0;->intAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v5, v4}, Lcom/google/protobuf/Writer;->writeSInt32(II)V

    goto/16 :goto_588

    :pswitch_46d
    invoke-direct {p0, p1, v3}, Lcom/google/protobuf/t0;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_588

    invoke-static {v4}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/t0;->longAt(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Lcom/google/protobuf/Writer;->writeSFixed64(IJ)V

    goto/16 :goto_588

    :pswitch_480
    invoke-direct {p0, p1, v3}, Lcom/google/protobuf/t0;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_588

    invoke-static {v4}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/t0;->intAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v5, v4}, Lcom/google/protobuf/Writer;->writeSFixed32(II)V

    goto/16 :goto_588

    :pswitch_493
    invoke-direct {p0, p1, v3}, Lcom/google/protobuf/t0;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_588

    invoke-static {v4}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/t0;->intAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v5, v4}, Lcom/google/protobuf/Writer;->writeEnum(II)V

    goto/16 :goto_588

    :pswitch_4a6
    invoke-direct {p0, p1, v3}, Lcom/google/protobuf/t0;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_588

    invoke-static {v4}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/t0;->intAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v5, v4}, Lcom/google/protobuf/Writer;->writeUInt32(II)V

    goto/16 :goto_588

    :pswitch_4b9
    invoke-direct {p0, p1, v3}, Lcom/google/protobuf/t0;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_588

    invoke-static {v4}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/b2;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/ByteString;

    invoke-interface {p2, v5, v4}, Lcom/google/protobuf/Writer;->writeBytes(ILcom/google/protobuf/ByteString;)V

    goto/16 :goto_588

    :pswitch_4ce
    invoke-direct {p0, p1, v3}, Lcom/google/protobuf/t0;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_588

    invoke-static {v4}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/b2;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v3}, Lcom/google/protobuf/t0;->getMessageFieldSchema(I)Lcom/google/protobuf/l1;

    move-result-object v6

    invoke-interface {p2, v5, v4, v6}, Lcom/google/protobuf/Writer;->writeMessage(ILjava/lang/Object;Lcom/google/protobuf/l1;)V

    goto/16 :goto_588

    :pswitch_4e5
    invoke-direct {p0, p1, v3}, Lcom/google/protobuf/t0;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_588

    invoke-static {v4}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/b2;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v5, v4, p2}, Lcom/google/protobuf/t0;->writeString(ILjava/lang/Object;Lcom/google/protobuf/Writer;)V

    goto/16 :goto_588

    :pswitch_4f8
    invoke-direct {p0, p1, v3}, Lcom/google/protobuf/t0;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_588

    invoke-static {v4}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/t0;->booleanAt(Ljava/lang/Object;J)Z

    move-result v4

    invoke-interface {p2, v5, v4}, Lcom/google/protobuf/Writer;->writeBool(IZ)V

    goto/16 :goto_588

    :pswitch_50b
    invoke-direct {p0, p1, v3}, Lcom/google/protobuf/t0;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_588

    invoke-static {v4}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/t0;->intAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v5, v4}, Lcom/google/protobuf/Writer;->writeFixed32(II)V

    goto :goto_588

    :pswitch_51d
    invoke-direct {p0, p1, v3}, Lcom/google/protobuf/t0;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_588

    invoke-static {v4}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/t0;->longAt(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Lcom/google/protobuf/Writer;->writeFixed64(IJ)V

    goto :goto_588

    :pswitch_52f
    invoke-direct {p0, p1, v3}, Lcom/google/protobuf/t0;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_588

    invoke-static {v4}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/t0;->intAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v5, v4}, Lcom/google/protobuf/Writer;->writeInt32(II)V

    goto :goto_588

    :pswitch_541
    invoke-direct {p0, p1, v3}, Lcom/google/protobuf/t0;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_588

    invoke-static {v4}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/t0;->longAt(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Lcom/google/protobuf/Writer;->writeUInt64(IJ)V

    goto :goto_588

    :pswitch_553
    invoke-direct {p0, p1, v3}, Lcom/google/protobuf/t0;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_588

    invoke-static {v4}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/t0;->longAt(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Lcom/google/protobuf/Writer;->writeInt64(IJ)V

    goto :goto_588

    :pswitch_565
    invoke-direct {p0, p1, v3}, Lcom/google/protobuf/t0;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_588

    invoke-static {v4}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/t0;->floatAt(Ljava/lang/Object;J)F

    move-result v4

    invoke-interface {p2, v5, v4}, Lcom/google/protobuf/Writer;->writeFloat(IF)V

    goto :goto_588

    :pswitch_577
    invoke-direct {p0, p1, v3}, Lcom/google/protobuf/t0;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_588

    invoke-static {v4}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/t0;->doubleAt(Ljava/lang/Object;J)D

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Lcom/google/protobuf/Writer;->writeDouble(ID)V

    :cond_588
    :goto_588
    add-int/lit8 v3, v3, -0x3

    goto/16 :goto_28

    :cond_58c
    :goto_58c
    if-eqz v2, :cond_5a3

    iget-object p1, p0, Lcom/google/protobuf/t0;->extensionSchema:Lcom/google/protobuf/u;

    invoke-virtual {p1, p2, v2}, Lcom/google/protobuf/u;->serializeExtension(Lcom/google/protobuf/Writer;Ljava/util/Map$Entry;)V

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5a1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    move-object v2, p1

    goto :goto_58c

    :cond_5a1
    move-object v2, v1

    goto :goto_58c

    :cond_5a3
    return-void

    :pswitch_data_5a4
    .packed-switch 0x0
        :pswitch_577
        :pswitch_565
        :pswitch_553
        :pswitch_541
        :pswitch_52f
        :pswitch_51d
        :pswitch_50b
        :pswitch_4f8
        :pswitch_4e5
        :pswitch_4ce
        :pswitch_4b9
        :pswitch_4a6
        :pswitch_493
        :pswitch_480
        :pswitch_46d
        :pswitch_45a
        :pswitch_447
        :pswitch_430
        :pswitch_41d
        :pswitch_40a
        :pswitch_3f7
        :pswitch_3e4
        :pswitch_3d1
        :pswitch_3be
        :pswitch_3ab
        :pswitch_398
        :pswitch_385
        :pswitch_36e
        :pswitch_35b
        :pswitch_348
        :pswitch_335
        :pswitch_322
        :pswitch_30f
        :pswitch_2fc
        :pswitch_2e9
        :pswitch_2d6
        :pswitch_2c3
        :pswitch_2b0
        :pswitch_29d
        :pswitch_28a
        :pswitch_277
        :pswitch_264
        :pswitch_251
        :pswitch_23e
        :pswitch_22b
        :pswitch_218
        :pswitch_205
        :pswitch_1f2
        :pswitch_1df
        :pswitch_1c8
        :pswitch_1bb
        :pswitch_1a8
        :pswitch_195
        :pswitch_182
        :pswitch_16f
        :pswitch_15c
        :pswitch_149
        :pswitch_136
        :pswitch_123
        :pswitch_110
        :pswitch_f9
        :pswitch_e4
        :pswitch_d1
        :pswitch_be
        :pswitch_ab
        :pswitch_98
        :pswitch_85
        :pswitch_72
        :pswitch_5b
    .end packed-switch
.end method

.method private writeMapHelper(Lcom/google/protobuf/Writer;ILjava/lang/Object;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/Writer;",
            "I",
            "Ljava/lang/Object;",
            "I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p3, :cond_15

    iget-object v0, p0, Lcom/google/protobuf/t0;->mapFieldSchema:Lcom/google/protobuf/l0;

    invoke-direct {p0, p4}, Lcom/google/protobuf/t0;->getMapFieldDefaultEntry(I)Ljava/lang/Object;

    move-result-object p4

    invoke-interface {v0, p4}, Lcom/google/protobuf/l0;->forMapMetadata(Ljava/lang/Object;)Lcom/google/protobuf/MapEntryLite$b;

    move-result-object p4

    iget-object v0, p0, Lcom/google/protobuf/t0;->mapFieldSchema:Lcom/google/protobuf/l0;

    invoke-interface {v0, p3}, Lcom/google/protobuf/l0;->forMapData(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p3

    invoke-interface {p1, p2, p4, p3}, Lcom/google/protobuf/Writer;->writeMap(ILcom/google/protobuf/MapEntryLite$b;Ljava/util/Map;)V

    :cond_15
    return-void
.end method

.method private writeString(ILjava/lang/Object;Lcom/google/protobuf/Writer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_a

    check-cast p2, Ljava/lang/String;

    invoke-interface {p3, p1, p2}, Lcom/google/protobuf/Writer;->writeString(ILjava/lang/String;)V

    goto :goto_f

    :cond_a
    check-cast p2, Lcom/google/protobuf/ByteString;

    invoke-interface {p3, p1, p2}, Lcom/google/protobuf/Writer;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :goto_f
    return-void
.end method

.method private writeUnknownInMessageTo(Lcom/google/protobuf/y1;Ljava/lang/Object;Lcom/google/protobuf/Writer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/y1<",
            "TUT;TUB;>;TT;",
            "Lcom/google/protobuf/Writer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1, p2}, Lcom/google/protobuf/y1;->getFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2, p3}, Lcom/google/protobuf/y1;->writeTo(Ljava/lang/Object;Lcom/google/protobuf/Writer;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/t0;->buffer:[I

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v0, :cond_11

    invoke-direct {p0, p1, p2, v2}, Lcom/google/protobuf/t0;->equals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-nez v3, :cond_e

    return v1

    :cond_e
    add-int/lit8 v2, v2, 0x3

    goto :goto_5

    :cond_11
    iget-object v0, p0, Lcom/google/protobuf/t0;->unknownFieldSchema:Lcom/google/protobuf/y1;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/y1;->getFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lcom/google/protobuf/t0;->unknownFieldSchema:Lcom/google/protobuf/y1;

    invoke-virtual {v2, p2}, Lcom/google/protobuf/y1;->getFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    return v1

    :cond_24
    iget-boolean v0, p0, Lcom/google/protobuf/t0;->hasExtensions:Z

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/google/protobuf/t0;->extensionSchema:Lcom/google/protobuf/u;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/u;->getExtensions(Ljava/lang/Object;)Lcom/google/protobuf/FieldSet;

    move-result-object p1

    iget-object v0, p0, Lcom/google/protobuf/t0;->extensionSchema:Lcom/google/protobuf/u;

    invoke-virtual {v0, p2}, Lcom/google/protobuf/u;->getExtensions(Ljava/lang/Object;)Lcom/google/protobuf/FieldSet;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/protobuf/FieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_39
    const/4 p1, 0x1

    return p1
.end method

.method getSchemaSize()I
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/t0;->buffer:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public getSerializedSize(Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/protobuf/t0;->proto3:Z

    if-eqz v0, :cond_9

    invoke-direct {p0, p1}, Lcom/google/protobuf/t0;->getSerializedSizeProto3(Ljava/lang/Object;)I

    move-result p1

    goto :goto_d

    :cond_9
    invoke-direct {p0, p1}, Lcom/google/protobuf/t0;->getSerializedSizeProto2(Ljava/lang/Object;)I

    move-result p1

    :goto_d
    return p1
.end method

.method public hashCode(Ljava/lang/Object;)I
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/t0;->buffer:[I

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_5
    if-ge v1, v0, :cond_22a

    invoke-direct {p0, v1}, Lcom/google/protobuf/t0;->typeAndOffsetAt(I)I

    move-result v3

    invoke-direct {p0, v1}, Lcom/google/protobuf/t0;->numberAt(I)I

    move-result v4

    invoke-static {v3}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v5

    invoke-static {v3}, Lcom/google/protobuf/t0;->type(I)I

    move-result v3

    const/16 v7, 0x25

    packed-switch v3, :pswitch_data_24a

    goto/16 :goto_226

    :pswitch_1e
    invoke-direct {p0, p1, v4, v1}, Lcom/google/protobuf/t0;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_226

    invoke-static {p1, v5, v6}, Lcom/google/protobuf/b2;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    mul-int/lit8 v2, v2, 0x35

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_225

    :pswitch_30
    invoke-direct {p0, p1, v4, v1}, Lcom/google/protobuf/t0;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_226

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/protobuf/t0;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v3

    goto/16 :goto_225

    :pswitch_42
    invoke-direct {p0, p1, v4, v1}, Lcom/google/protobuf/t0;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_226

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/protobuf/t0;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_225

    :pswitch_50
    invoke-direct {p0, p1, v4, v1}, Lcom/google/protobuf/t0;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_226

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/protobuf/t0;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v3

    goto/16 :goto_225

    :pswitch_62
    invoke-direct {p0, p1, v4, v1}, Lcom/google/protobuf/t0;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_226

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/protobuf/t0;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_225

    :pswitch_70
    invoke-direct {p0, p1, v4, v1}, Lcom/google/protobuf/t0;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_226

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/protobuf/t0;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_225

    :pswitch_7e
    invoke-direct {p0, p1, v4, v1}, Lcom/google/protobuf/t0;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_226

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/protobuf/t0;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_225

    :pswitch_8c
    invoke-direct {p0, p1, v4, v1}, Lcom/google/protobuf/t0;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_226

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/protobuf/b2;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_225

    :pswitch_9e
    invoke-direct {p0, p1, v4, v1}, Lcom/google/protobuf/t0;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_226

    invoke-static {p1, v5, v6}, Lcom/google/protobuf/b2;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    mul-int/lit8 v2, v2, 0x35

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_225

    :pswitch_b0
    invoke-direct {p0, p1, v4, v1}, Lcom/google/protobuf/t0;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_226

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/protobuf/b2;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto/16 :goto_225

    :pswitch_c4
    invoke-direct {p0, p1, v4, v1}, Lcom/google/protobuf/t0;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_226

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/protobuf/t0;->oneofBooleanAt(Ljava/lang/Object;J)Z

    move-result v3

    invoke-static {v3}, Lcom/google/protobuf/Internal;->hashBoolean(Z)I

    move-result v3

    goto/16 :goto_225

    :pswitch_d6
    invoke-direct {p0, p1, v4, v1}, Lcom/google/protobuf/t0;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_226

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/protobuf/t0;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_225

    :pswitch_e4
    invoke-direct {p0, p1, v4, v1}, Lcom/google/protobuf/t0;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_226

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/protobuf/t0;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v3

    goto/16 :goto_225

    :pswitch_f6
    invoke-direct {p0, p1, v4, v1}, Lcom/google/protobuf/t0;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_226

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/protobuf/t0;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_225

    :pswitch_104
    invoke-direct {p0, p1, v4, v1}, Lcom/google/protobuf/t0;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_226

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/protobuf/t0;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v3

    goto/16 :goto_225

    :pswitch_116
    invoke-direct {p0, p1, v4, v1}, Lcom/google/protobuf/t0;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_226

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/protobuf/t0;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v3

    goto/16 :goto_225

    :pswitch_128
    invoke-direct {p0, p1, v4, v1}, Lcom/google/protobuf/t0;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_226

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/protobuf/t0;->oneofFloatAt(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    goto/16 :goto_225

    :pswitch_13a
    invoke-direct {p0, p1, v4, v1}, Lcom/google/protobuf/t0;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_226

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/protobuf/t0;->oneofDoubleAt(Ljava/lang/Object;J)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v3

    goto/16 :goto_225

    :pswitch_150
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/protobuf/b2;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_225

    :pswitch_15c
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/protobuf/b2;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_225

    :pswitch_168
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/b2;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1c1

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v7

    goto :goto_1c1

    :pswitch_173
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/protobuf/b2;->getLong(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v3

    goto/16 :goto_225

    :pswitch_17f
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/protobuf/b2;->getInt(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_225

    :pswitch_187
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/protobuf/b2;->getLong(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v3

    goto/16 :goto_225

    :pswitch_193
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/protobuf/b2;->getInt(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_225

    :pswitch_19b
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/protobuf/b2;->getInt(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_225

    :pswitch_1a3
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/protobuf/b2;->getInt(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_225

    :pswitch_1ab
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/protobuf/b2;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_225

    :pswitch_1b7
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/b2;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1c1

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v7

    :cond_1c1
    :goto_1c1
    mul-int/lit8 v2, v2, 0x35

    add-int/2addr v2, v7

    goto :goto_226

    :pswitch_1c5
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/protobuf/b2;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_225

    :pswitch_1d2
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/protobuf/b2;->getBoolean(Ljava/lang/Object;J)Z

    move-result v3

    invoke-static {v3}, Lcom/google/protobuf/Internal;->hashBoolean(Z)I

    move-result v3

    goto :goto_225

    :pswitch_1dd
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/protobuf/b2;->getInt(Ljava/lang/Object;J)I

    move-result v3

    goto :goto_225

    :pswitch_1e4
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/protobuf/b2;->getLong(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v3

    goto :goto_225

    :pswitch_1ef
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/protobuf/b2;->getInt(Ljava/lang/Object;J)I

    move-result v3

    goto :goto_225

    :pswitch_1f6
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/protobuf/b2;->getLong(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v3

    goto :goto_225

    :pswitch_201
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/protobuf/b2;->getLong(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v3

    goto :goto_225

    :pswitch_20c
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/protobuf/b2;->getFloat(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    goto :goto_225

    :pswitch_217
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/protobuf/b2;->getDouble(Ljava/lang/Object;J)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v3

    :goto_225
    add-int/2addr v2, v3

    :cond_226
    :goto_226
    add-int/lit8 v1, v1, 0x3

    goto/16 :goto_5

    :cond_22a
    mul-int/lit8 v2, v2, 0x35

    iget-object v0, p0, Lcom/google/protobuf/t0;->unknownFieldSchema:Lcom/google/protobuf/y1;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/y1;->getFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v2, v0

    iget-boolean v0, p0, Lcom/google/protobuf/t0;->hasExtensions:Z

    if-eqz v0, :cond_248

    mul-int/lit8 v2, v2, 0x35

    iget-object v0, p0, Lcom/google/protobuf/t0;->extensionSchema:Lcom/google/protobuf/u;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/u;->getExtensions(Ljava/lang/Object;)Lcom/google/protobuf/FieldSet;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/FieldSet;->hashCode()I

    move-result p1

    add-int/2addr v2, p1

    :cond_248
    return v2

    nop

    :pswitch_data_24a
    .packed-switch 0x0
        :pswitch_217
        :pswitch_20c
        :pswitch_201
        :pswitch_1f6
        :pswitch_1ef
        :pswitch_1e4
        :pswitch_1dd
        :pswitch_1d2
        :pswitch_1c5
        :pswitch_1b7
        :pswitch_1ab
        :pswitch_1a3
        :pswitch_19b
        :pswitch_193
        :pswitch_187
        :pswitch_17f
        :pswitch_173
        :pswitch_168
        :pswitch_15c
        :pswitch_15c
        :pswitch_15c
        :pswitch_15c
        :pswitch_15c
        :pswitch_15c
        :pswitch_15c
        :pswitch_15c
        :pswitch_15c
        :pswitch_15c
        :pswitch_15c
        :pswitch_15c
        :pswitch_15c
        :pswitch_15c
        :pswitch_15c
        :pswitch_15c
        :pswitch_15c
        :pswitch_15c
        :pswitch_15c
        :pswitch_15c
        :pswitch_15c
        :pswitch_15c
        :pswitch_15c
        :pswitch_15c
        :pswitch_15c
        :pswitch_15c
        :pswitch_15c
        :pswitch_15c
        :pswitch_15c
        :pswitch_15c
        :pswitch_15c
        :pswitch_15c
        :pswitch_150
        :pswitch_13a
        :pswitch_128
        :pswitch_116
        :pswitch_104
        :pswitch_f6
        :pswitch_e4
        :pswitch_d6
        :pswitch_c4
        :pswitch_b0
        :pswitch_9e
        :pswitch_8c
        :pswitch_7e
        :pswitch_70
        :pswitch_62
        :pswitch_50
        :pswitch_42
        :pswitch_30
        :pswitch_1e
    .end packed-switch
.end method

.method public final isInitialized(Ljava/lang/Object;)Z
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    const v8, 0xfffff

    const/4 v9, 0x0

    const v0, 0xfffff

    const/4 v1, 0x0

    const/4 v10, 0x0

    :goto_d
    iget v2, v6, Lcom/google/protobuf/t0;->checkInitializedCount:I

    const/4 v3, 0x1

    if-ge v10, v2, :cond_b3

    iget-object v2, v6, Lcom/google/protobuf/t0;->intArray:[I

    aget v11, v2, v10

    invoke-direct {v6, v11}, Lcom/google/protobuf/t0;->numberAt(I)I

    move-result v12

    invoke-direct {v6, v11}, Lcom/google/protobuf/t0;->typeAndOffsetAt(I)I

    move-result v13

    iget-object v2, v6, Lcom/google/protobuf/t0;->buffer:[I

    add-int/lit8 v4, v11, 0x2

    aget v2, v2, v4

    and-int v4, v2, v8

    ushr-int/lit8 v2, v2, 0x14

    shl-int v14, v3, v2

    if-eq v4, v0, :cond_39

    if-eq v4, v8, :cond_35

    sget-object v0, Lcom/google/protobuf/t0;->UNSAFE:Lsun/misc/Unsafe;

    int-to-long v1, v4

    invoke-virtual {v0, v7, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    :cond_35
    move/from16 v16, v1

    move v15, v4

    goto :goto_3c

    :cond_39
    move v15, v0

    move/from16 v16, v1

    :goto_3c
    invoke-static {v13}, Lcom/google/protobuf/t0;->isRequired(I)Z

    move-result v0

    if-eqz v0, :cond_52

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v15

    move/from16 v4, v16

    move v5, v14

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/t0;->isFieldPresent(Ljava/lang/Object;IIII)Z

    move-result v0

    if-nez v0, :cond_52

    return v9

    :cond_52
    invoke-static {v13}, Lcom/google/protobuf/t0;->type(I)I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_92

    const/16 v1, 0x11

    if-eq v0, v1, :cond_92

    const/16 v1, 0x1b

    if-eq v0, v1, :cond_8b

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_7a

    const/16 v1, 0x44

    if-eq v0, v1, :cond_7a

    const/16 v1, 0x31

    if-eq v0, v1, :cond_8b

    const/16 v1, 0x32

    if-eq v0, v1, :cond_73

    goto :goto_ac

    :cond_73
    invoke-direct {v6, v7, v13, v11}, Lcom/google/protobuf/t0;->isMapInitialized(Ljava/lang/Object;II)Z

    move-result v0

    if-nez v0, :cond_ac

    return v9

    :cond_7a
    invoke-direct {v6, v7, v12, v11}, Lcom/google/protobuf/t0;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_ac

    invoke-direct {v6, v11}, Lcom/google/protobuf/t0;->getMessageFieldSchema(I)Lcom/google/protobuf/l1;

    move-result-object v0

    invoke-static {v7, v13, v0}, Lcom/google/protobuf/t0;->isInitialized(Ljava/lang/Object;ILcom/google/protobuf/l1;)Z

    move-result v0

    if-nez v0, :cond_ac

    return v9

    :cond_8b
    invoke-direct {v6, v7, v13, v11}, Lcom/google/protobuf/t0;->isListInitialized(Ljava/lang/Object;II)Z

    move-result v0

    if-nez v0, :cond_ac

    return v9

    :cond_92
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v15

    move/from16 v4, v16

    move v5, v14

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/t0;->isFieldPresent(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_ac

    invoke-direct {v6, v11}, Lcom/google/protobuf/t0;->getMessageFieldSchema(I)Lcom/google/protobuf/l1;

    move-result-object v0

    invoke-static {v7, v13, v0}, Lcom/google/protobuf/t0;->isInitialized(Ljava/lang/Object;ILcom/google/protobuf/l1;)Z

    move-result v0

    if-nez v0, :cond_ac

    return v9

    :cond_ac
    :goto_ac
    add-int/lit8 v10, v10, 0x1

    move v0, v15

    move/from16 v1, v16

    goto/16 :goto_d

    :cond_b3
    iget-boolean v0, v6, Lcom/google/protobuf/t0;->hasExtensions:Z

    if-eqz v0, :cond_c4

    iget-object v0, v6, Lcom/google/protobuf/t0;->extensionSchema:Lcom/google/protobuf/u;

    invoke-virtual {v0, v7}, Lcom/google/protobuf/u;->getExtensions(Ljava/lang/Object;)Lcom/google/protobuf/FieldSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/FieldSet;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_c4

    return v9

    :cond_c4
    return v3
.end method

.method public makeImmutable(Ljava/lang/Object;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/protobuf/t0;->isMutable(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    instance-of v0, p1, Lcom/google/protobuf/GeneratedMessageLite;

    if-eqz v0, :cond_17

    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/GeneratedMessageLite;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->clearMemoizedSerializedSize()V

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->clearMemoizedHashCode()V

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->markImmutable()V

    :cond_17
    iget-object v0, p0, Lcom/google/protobuf/t0;->buffer:[I

    array-length v0, v0

    const/4 v1, 0x0

    :goto_1b
    if-ge v1, v0, :cond_5f

    invoke-direct {p0, v1}, Lcom/google/protobuf/t0;->typeAndOffsetAt(I)I

    move-result v2

    invoke-static {v2}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v3

    invoke-static {v2}, Lcom/google/protobuf/t0;->type(I)I

    move-result v2

    const/16 v5, 0x9

    if-eq v2, v5, :cond_49

    packed-switch v2, :pswitch_data_6e

    goto :goto_5c

    :pswitch_31
    sget-object v2, Lcom/google/protobuf/t0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v2, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_5c

    iget-object v6, p0, Lcom/google/protobuf/t0;->mapFieldSchema:Lcom/google/protobuf/l0;

    invoke-interface {v6, v5}, Lcom/google/protobuf/l0;->toImmutable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, p1, v3, v4, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_5c

    :pswitch_43
    iget-object v2, p0, Lcom/google/protobuf/t0;->listFieldSchema:Lcom/google/protobuf/i0;

    invoke-virtual {v2, p1, v3, v4}, Lcom/google/protobuf/i0;->makeImmutableListAt(Ljava/lang/Object;J)V

    goto :goto_5c

    :cond_49
    :pswitch_49
    invoke-direct {p0, p1, v1}, Lcom/google/protobuf/t0;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_5c

    invoke-direct {p0, v1}, Lcom/google/protobuf/t0;->getMessageFieldSchema(I)Lcom/google/protobuf/l1;

    move-result-object v2

    sget-object v5, Lcom/google/protobuf/t0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v5, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/protobuf/l1;->makeImmutable(Ljava/lang/Object;)V

    :cond_5c
    :goto_5c
    add-int/lit8 v1, v1, 0x3

    goto :goto_1b

    :cond_5f
    iget-object v0, p0, Lcom/google/protobuf/t0;->unknownFieldSchema:Lcom/google/protobuf/y1;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/y1;->makeImmutable(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/protobuf/t0;->hasExtensions:Z

    if-eqz v0, :cond_6d

    iget-object v0, p0, Lcom/google/protobuf/t0;->extensionSchema:Lcom/google/protobuf/u;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/u;->makeImmutable(Ljava/lang/Object;)V

    :cond_6d
    return-void

    :pswitch_data_6e
    .packed-switch 0x11
        :pswitch_49
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_31
    .end packed-switch
.end method

.method public mergeFrom(Ljava/lang/Object;Lcom/google/protobuf/j1;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/protobuf/j1;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/protobuf/t0;->checkMutable(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/protobuf/t0;->unknownFieldSchema:Lcom/google/protobuf/y1;

    iget-object v2, p0, Lcom/google/protobuf/t0;->extensionSchema:Lcom/google/protobuf/u;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/t0;->mergeFromHelper(Lcom/google/protobuf/y1;Lcom/google/protobuf/u;Ljava/lang/Object;Lcom/google/protobuf/j1;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method public mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/protobuf/t0;->checkMutable(Ljava/lang/Object;)V

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    :goto_7
    iget-object v1, p0, Lcom/google/protobuf/t0;->buffer:[I

    array-length v1, v1

    if-ge v0, v1, :cond_12

    invoke-direct {p0, p1, p2, v0}, Lcom/google/protobuf/t0;->mergeSingleField(Ljava/lang/Object;Ljava/lang/Object;I)V

    add-int/lit8 v0, v0, 0x3

    goto :goto_7

    :cond_12
    iget-object v0, p0, Lcom/google/protobuf/t0;->unknownFieldSchema:Lcom/google/protobuf/y1;

    invoke-static {v0, p1, p2}, Lcom/google/protobuf/SchemaUtil;->mergeUnknownFields(Lcom/google/protobuf/y1;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/protobuf/t0;->hasExtensions:Z

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/google/protobuf/t0;->extensionSchema:Lcom/google/protobuf/u;

    invoke-static {v0, p1, p2}, Lcom/google/protobuf/SchemaUtil;->mergeExtensions(Lcom/google/protobuf/u;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_20
    return-void
.end method

.method public mergeFrom(Ljava/lang/Object;[BIILcom/google/protobuf/h$b;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BII",
            "Lcom/google/protobuf/h$b;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/protobuf/t0;->proto3:Z

    if-eqz v0, :cond_8

    invoke-direct/range {p0 .. p5}, Lcom/google/protobuf/t0;->parseProto3Message(Ljava/lang/Object;[BIILcom/google/protobuf/h$b;)I

    goto :goto_12

    :cond_8
    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/google/protobuf/t0;->parseProto2Message(Ljava/lang/Object;[BIIILcom/google/protobuf/h$b;)I

    :goto_12
    return-void
.end method

.method public newInstance()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/t0;->newInstanceSchema:Lcom/google/protobuf/z0;

    iget-object v1, p0, Lcom/google/protobuf/t0;->defaultInstance:Lcom/google/protobuf/q0;

    invoke-interface {v0, v1}, Lcom/google/protobuf/z0;->newInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method parseProto2Message(Ljava/lang/Object;[BIIILcom/google/protobuf/h$b;)I
    .registers 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIII",
            "Lcom/google/protobuf/h$b;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move/from16 v11, p5

    move-object/from16 v9, p6

    invoke-static/range {p1 .. p1}, Lcom/google/protobuf/t0;->checkMutable(Ljava/lang/Object;)V

    sget-object v10, Lcom/google/protobuf/t0;->UNSAFE:Lsun/misc/Unsafe;

    const/16 v16, 0x0

    move/from16 v0, p3

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const v6, 0xfffff

    :goto_1c
    if-ge v0, v13, :cond_3f5

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, v12, v0

    if-gez v0, :cond_2d

    invoke-static {v0, v12, v3, v9}, Lcom/google/protobuf/h;->decodeVarint32(I[BILcom/google/protobuf/h$b;)I

    move-result v0

    iget v3, v9, Lcom/google/protobuf/h$b;->int1:I

    move v4, v3

    move v3, v0

    goto :goto_2e

    :cond_2d
    move v4, v0

    :goto_2e
    ushr-int/lit8 v0, v4, 0x3

    and-int/lit8 v7, v4, 0x7

    const/4 v8, 0x3

    if-le v0, v1, :cond_3b

    div-int/2addr v2, v8

    invoke-direct {v15, v0, v2}, Lcom/google/protobuf/t0;->positionForFieldNumber(II)I

    move-result v1

    goto :goto_3f

    :cond_3b
    invoke-direct {v15, v0}, Lcom/google/protobuf/t0;->positionForFieldNumber(I)I

    move-result v1

    :goto_3f
    move v2, v1

    const/4 v1, -0x1

    if-ne v2, v1, :cond_54

    move/from16 v22, v0

    move v2, v3

    move v9, v4

    move/from16 v19, v5

    move/from16 v17, v6

    move-object/from16 v25, v10

    move v8, v11

    const/16 v18, -0x1

    const/16 v20, 0x0

    goto/16 :goto_39e

    :cond_54
    iget-object v1, v15, Lcom/google/protobuf/t0;->buffer:[I

    add-int/lit8 v19, v2, 0x1

    aget v1, v1, v19

    invoke-static {v1}, Lcom/google/protobuf/t0;->type(I)I

    move-result v8

    invoke-static {v1}, Lcom/google/protobuf/t0;->offset(I)J

    move-result-wide v11

    move/from16 v19, v4

    const/16 v4, 0x11

    move-wide/from16 v20, v11

    if-gt v8, v4, :cond_2af

    iget-object v4, v15, Lcom/google/protobuf/t0;->buffer:[I

    add-int/lit8 v12, v2, 0x2

    aget v4, v4, v12

    ushr-int/lit8 v12, v4, 0x14

    const/4 v11, 0x1

    shl-int v12, v11, v12

    const v11, 0xfffff

    and-int/2addr v4, v11

    move/from16 v17, v12

    if-eq v4, v6, :cond_8b

    if-eq v6, v11, :cond_83

    int-to-long v11, v6

    invoke-virtual {v10, v14, v11, v12, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_83
    int-to-long v5, v4

    invoke-virtual {v10, v14, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    move v12, v4

    move v11, v5

    goto :goto_8d

    :cond_8b
    move v11, v5

    move v12, v6

    :goto_8d
    const/4 v4, 0x5

    packed-switch v8, :pswitch_data_450

    move-object/from16 v6, p2

    move/from16 v22, v0

    move v8, v2

    move/from16 p3, v12

    move/from16 v12, v19

    const/16 v18, -0x1

    goto/16 :goto_2a1

    :pswitch_9e
    const/4 v5, 0x3

    if-ne v7, v5, :cond_d3

    invoke-direct {v15, v14, v2}, Lcom/google/protobuf/t0;->mutableMessageFieldForMerge(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v7

    shl-int/lit8 v1, v0, 0x3

    or-int/lit8 v5, v1, 0x4

    invoke-direct {v15, v2}, Lcom/google/protobuf/t0;->getMessageFieldSchema(I)Lcom/google/protobuf/l1;

    move-result-object v1

    move/from16 v22, v0

    move-object v0, v7

    const/16 v18, -0x1

    move v8, v2

    move-object/from16 v2, p2

    move/from16 v6, v19

    move/from16 v4, p4

    move/from16 p3, v12

    move v12, v6

    move-object/from16 v6, p6

    invoke-static/range {v0 .. v6}, Lcom/google/protobuf/h;->mergeGroupField(Ljava/lang/Object;Lcom/google/protobuf/l1;[BIIILcom/google/protobuf/h$b;)I

    move-result v0

    invoke-direct {v15, v14, v8, v7}, Lcom/google/protobuf/t0;->storeMessageField(Ljava/lang/Object;ILjava/lang/Object;)V

    or-int v5, v11, v17

    move/from16 v6, p3

    move/from16 v11, p5

    move v2, v8

    move v3, v12

    move/from16 v1, v22

    move-object/from16 v12, p2

    goto/16 :goto_1c

    :cond_d3
    move/from16 v22, v0

    move v8, v2

    move/from16 p3, v12

    move/from16 v12, v19

    const/16 v18, -0x1

    move-object/from16 v6, p2

    goto/16 :goto_2a1

    :pswitch_e0
    move/from16 v22, v0

    move v8, v2

    move/from16 p3, v12

    move/from16 v12, v19

    const/16 v18, -0x1

    move-object/from16 v6, p2

    if-nez v7, :cond_2a1

    move-wide/from16 v4, v20

    invoke-static {v6, v3, v9}, Lcom/google/protobuf/h;->decodeVarint64([BILcom/google/protobuf/h$b;)I

    move-result v7

    iget-wide v0, v9, Lcom/google/protobuf/h$b;->long1:J

    invoke-static {v0, v1}, Lcom/google/protobuf/CodedInputStream;->decodeZigZag64(J)J

    move-result-wide v19

    move-object v0, v10

    move-object/from16 v1, p1

    move-wide v2, v4

    move-wide/from16 v4, v19

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    goto/16 :goto_25c

    :pswitch_104
    move-object/from16 v6, p2

    move/from16 v22, v0

    move v8, v2

    move/from16 p3, v12

    move/from16 v12, v19

    move-wide/from16 v4, v20

    const/16 v18, -0x1

    if-nez v7, :cond_2a1

    invoke-static {v6, v3, v9}, Lcom/google/protobuf/h;->decodeVarint32([BILcom/google/protobuf/h$b;)I

    move-result v0

    iget v1, v9, Lcom/google/protobuf/h$b;->int1:I

    invoke-static {v1}, Lcom/google/protobuf/CodedInputStream;->decodeZigZag32(I)I

    move-result v1

    invoke-virtual {v10, v14, v4, v5, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_294

    :pswitch_122
    move-object/from16 v6, p2

    move/from16 v22, v0

    move v8, v2

    move/from16 p3, v12

    move/from16 v12, v19

    move-wide/from16 v4, v20

    const/16 v18, -0x1

    if-nez v7, :cond_2a1

    invoke-static {v6, v3, v9}, Lcom/google/protobuf/h;->decodeVarint32([BILcom/google/protobuf/h$b;)I

    move-result v0

    iget v1, v9, Lcom/google/protobuf/h$b;->int1:I

    invoke-direct {v15, v8}, Lcom/google/protobuf/t0;->getEnumFieldVerifier(I)Lcom/google/protobuf/Internal$e;

    move-result-object v2

    if-eqz v2, :cond_159

    invoke-interface {v2, v1}, Lcom/google/protobuf/Internal$e;->isInRange(I)Z

    move-result v2

    if-eqz v2, :cond_144

    goto :goto_159

    :cond_144
    invoke-static/range {p1 .. p1}, Lcom/google/protobuf/t0;->getMutableUnknownFields(Ljava/lang/Object;)Lcom/google/protobuf/UnknownFieldSetLite;

    move-result-object v2

    int-to-long v3, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v12, v1}, Lcom/google/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    move v2, v8

    move v5, v11

    move v3, v12

    move/from16 v1, v22

    move/from16 v11, p5

    goto/16 :goto_29c

    :cond_159
    :goto_159
    invoke-virtual {v10, v14, v4, v5, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_294

    :pswitch_15e
    move-object/from16 v6, p2

    move/from16 v22, v0

    move v8, v2

    move/from16 p3, v12

    move/from16 v12, v19

    move-wide/from16 v4, v20

    const/4 v0, 0x2

    const/16 v18, -0x1

    if-ne v7, v0, :cond_2a1

    invoke-static {v6, v3, v9}, Lcom/google/protobuf/h;->decodeBytes([BILcom/google/protobuf/h$b;)I

    move-result v0

    iget-object v1, v9, Lcom/google/protobuf/h$b;->object1:Ljava/lang/Object;

    invoke-virtual {v10, v14, v4, v5, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_294

    :pswitch_179
    move-object/from16 v6, p2

    move/from16 v22, v0

    move v8, v2

    move/from16 p3, v12

    move/from16 v12, v19

    const/4 v0, 0x2

    const/16 v18, -0x1

    if-ne v7, v0, :cond_2a1

    invoke-direct {v15, v14, v8}, Lcom/google/protobuf/t0;->mutableMessageFieldForMerge(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v7

    invoke-direct {v15, v8}, Lcom/google/protobuf/t0;->getMessageFieldSchema(I)Lcom/google/protobuf/l1;

    move-result-object v1

    move-object v0, v7

    move-object/from16 v2, p2

    move/from16 v4, p4

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/h;->mergeMessageField(Ljava/lang/Object;Lcom/google/protobuf/l1;[BIILcom/google/protobuf/h$b;)I

    move-result v0

    invoke-direct {v15, v14, v8, v7}, Lcom/google/protobuf/t0;->storeMessageField(Ljava/lang/Object;ILjava/lang/Object;)V

    goto/16 :goto_294

    :pswitch_19f
    move-object/from16 v6, p2

    move/from16 v22, v0

    move v8, v2

    move/from16 p3, v12

    move/from16 v12, v19

    move-wide/from16 v4, v20

    const/4 v0, 0x2

    const/16 v18, -0x1

    if-ne v7, v0, :cond_2a1

    const/high16 v0, 0x20000000

    and-int/2addr v0, v1

    if-nez v0, :cond_1b9

    invoke-static {v6, v3, v9}, Lcom/google/protobuf/h;->decodeString([BILcom/google/protobuf/h$b;)I

    move-result v0

    goto :goto_1bd

    :cond_1b9
    invoke-static {v6, v3, v9}, Lcom/google/protobuf/h;->decodeStringRequireUtf8([BILcom/google/protobuf/h$b;)I

    move-result v0

    :goto_1bd
    iget-object v1, v9, Lcom/google/protobuf/h$b;->object1:Ljava/lang/Object;

    invoke-virtual {v10, v14, v4, v5, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_294

    :pswitch_1c4
    move-object/from16 v6, p2

    move/from16 v22, v0

    move v8, v2

    move/from16 p3, v12

    move/from16 v12, v19

    move-wide/from16 v4, v20

    const/16 v18, -0x1

    if-nez v7, :cond_2a1

    invoke-static {v6, v3, v9}, Lcom/google/protobuf/h;->decodeVarint64([BILcom/google/protobuf/h$b;)I

    move-result v0

    iget-wide v1, v9, Lcom/google/protobuf/h$b;->long1:J

    const-wide/16 v19, 0x0

    cmp-long v3, v1, v19

    if-eqz v3, :cond_1e1

    const/4 v1, 0x1

    goto :goto_1e2

    :cond_1e1
    const/4 v1, 0x0

    :goto_1e2
    invoke-static {v14, v4, v5, v1}, Lcom/google/protobuf/b2;->putBoolean(Ljava/lang/Object;JZ)V

    goto/16 :goto_294

    :pswitch_1e7
    move-object/from16 v6, p2

    move/from16 v22, v0

    move v8, v2

    move/from16 p3, v12

    move/from16 v12, v19

    move-wide/from16 v1, v20

    const/16 v18, -0x1

    if-ne v7, v4, :cond_2a1

    invoke-static {v6, v3}, Lcom/google/protobuf/h;->decodeFixed32([BI)I

    move-result v0

    invoke-virtual {v10, v14, v1, v2, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_278

    :pswitch_1ff
    move-object/from16 v6, p2

    move/from16 v22, v0

    move v8, v2

    move/from16 p3, v12

    move/from16 v12, v19

    move-wide/from16 v1, v20

    const/4 v0, 0x1

    const/16 v18, -0x1

    if-ne v7, v0, :cond_2a1

    invoke-static {v6, v3}, Lcom/google/protobuf/h;->decodeFixed64([BI)J

    move-result-wide v4

    move-object v0, v10

    move-wide/from16 v20, v1

    move-object/from16 v1, p1

    move v7, v3

    move-wide/from16 v2, v20

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    add-int/lit8 v0, v7, 0x8

    goto/16 :goto_294

    :pswitch_222
    move-object/from16 v6, p2

    move/from16 v22, v0

    move v8, v2

    move/from16 p3, v12

    move/from16 v12, v19

    const/16 v18, -0x1

    if-nez v7, :cond_2a1

    invoke-static {v6, v3, v9}, Lcom/google/protobuf/h;->decodeVarint32([BILcom/google/protobuf/h$b;)I

    move-result v0

    iget v1, v9, Lcom/google/protobuf/h$b;->int1:I

    move-wide/from16 v4, v20

    invoke-virtual {v10, v14, v4, v5, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_294

    :pswitch_23c
    move-object/from16 v6, p2

    move/from16 v22, v0

    move v8, v2

    move/from16 p3, v12

    move/from16 v12, v19

    move-wide/from16 v4, v20

    const/16 v18, -0x1

    if-nez v7, :cond_2a1

    invoke-static {v6, v3, v9}, Lcom/google/protobuf/h;->decodeVarint64([BILcom/google/protobuf/h$b;)I

    move-result v7

    iget-wide v2, v9, Lcom/google/protobuf/h$b;->long1:J

    move-object v0, v10

    move-object/from16 v1, p1

    move-wide/from16 v19, v2

    move-wide v2, v4

    move-wide/from16 v4, v19

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    :goto_25c
    or-int v5, v11, v17

    move/from16 v11, p5

    move v0, v7

    goto :goto_298

    :pswitch_262
    move-object/from16 v6, p2

    move/from16 v22, v0

    move v8, v2

    move/from16 p3, v12

    move/from16 v12, v19

    move-wide/from16 v0, v20

    const/16 v18, -0x1

    if-ne v7, v4, :cond_2a1

    invoke-static {v6, v3}, Lcom/google/protobuf/h;->decodeFloat([BI)F

    move-result v2

    invoke-static {v14, v0, v1, v2}, Lcom/google/protobuf/b2;->putFloat(Ljava/lang/Object;JF)V

    :goto_278
    add-int/lit8 v0, v3, 0x4

    goto :goto_294

    :pswitch_27b
    move-object/from16 v6, p2

    move/from16 v22, v0

    move v8, v2

    move/from16 p3, v12

    move/from16 v12, v19

    move-wide/from16 v0, v20

    const/4 v2, 0x1

    const/16 v18, -0x1

    if-ne v7, v2, :cond_2a1

    invoke-static {v6, v3}, Lcom/google/protobuf/h;->decodeDouble([BI)D

    move-result-wide v4

    invoke-static {v14, v0, v1, v4, v5}, Lcom/google/protobuf/b2;->putDouble(Ljava/lang/Object;JD)V

    add-int/lit8 v0, v3, 0x8

    :goto_294
    or-int v5, v11, v17

    move/from16 v11, p5

    :goto_298
    move v2, v8

    move v3, v12

    move/from16 v1, v22

    :goto_29c
    move-object v12, v6

    move/from16 v6, p3

    goto/16 :goto_1c

    :cond_2a1
    :goto_2a1
    move/from16 v17, p3

    move v2, v3

    move/from16 v20, v8

    move-object/from16 v25, v10

    move/from16 v19, v11

    move v9, v12

    move/from16 v8, p5

    goto/16 :goto_39e

    :cond_2af
    move/from16 v22, v0

    move v11, v2

    move/from16 v17, v6

    move/from16 v12, v19

    const/16 v18, -0x1

    move/from16 v19, v5

    move-wide/from16 v5, v20

    const/16 v0, 0x1b

    if-ne v8, v0, :cond_308

    const/4 v0, 0x2

    if-ne v7, v0, :cond_2ff

    invoke-virtual {v10, v14, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Internal$j;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$j;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_2e1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2d8

    const/16 v1, 0xa

    goto :goto_2da

    :cond_2d8
    mul-int/lit8 v1, v1, 0x2

    :goto_2da
    invoke-interface {v0, v1}, Lcom/google/protobuf/Internal$j;->mutableCopyWithCapacity(I)Lcom/google/protobuf/Internal$j;

    move-result-object v0

    invoke-virtual {v10, v14, v5, v6, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_2e1
    move-object v5, v0

    invoke-direct {v15, v11}, Lcom/google/protobuf/t0;->getMessageFieldSchema(I)Lcom/google/protobuf/l1;

    move-result-object v0

    move v1, v12

    move-object/from16 v2, p2

    move/from16 v4, p4

    move-object/from16 v6, p6

    invoke-static/range {v0 .. v6}, Lcom/google/protobuf/h;->decodeMessageList(Lcom/google/protobuf/l1;I[BIILcom/google/protobuf/Internal$j;Lcom/google/protobuf/h$b;)I

    move-result v0

    move v2, v11

    move v3, v12

    move/from16 v6, v17

    move/from16 v5, v19

    move/from16 v1, v22

    move-object/from16 v12, p2

    move/from16 v11, p5

    goto/16 :goto_1c

    :cond_2ff
    move v15, v3

    move-object/from16 v25, v10

    move/from16 v20, v11

    move/from16 v21, v12

    goto/16 :goto_379

    :cond_308
    const/16 v0, 0x31

    if-gt v8, v0, :cond_34f

    int-to-long v1, v1

    move-object/from16 v0, p0

    move-wide/from16 v20, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v4, v3

    move v15, v4

    move/from16 v4, p4

    move-wide/from16 v23, v5

    move v5, v12

    move/from16 v6, v22

    move/from16 p3, v8

    move v8, v11

    move-object/from16 v25, v10

    move-wide/from16 v9, v20

    move/from16 v20, v11

    move/from16 v11, p3

    move/from16 v21, v12

    move-wide/from16 v12, v23

    move-object/from16 v14, p6

    invoke-direct/range {v0 .. v14}, Lcom/google/protobuf/t0;->parseRepeatedField(Ljava/lang/Object;[BIIIIIIJIJLcom/google/protobuf/h$b;)I

    move-result v0

    if-eq v0, v15, :cond_39a

    :goto_335
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move/from16 v11, p5

    move-object/from16 v9, p6

    move/from16 v6, v17

    move/from16 v5, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v1, v22

    move-object/from16 v10, v25

    goto/16 :goto_1c

    :cond_34f
    move v15, v3

    move-wide/from16 v23, v5

    move/from16 p3, v8

    move-object/from16 v25, v10

    move/from16 v20, v11

    move/from16 v21, v12

    const/16 v0, 0x32

    move/from16 v9, p3

    if-ne v9, v0, :cond_37f

    const/4 v0, 0x2

    if-ne v7, v0, :cond_379

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, v20

    move-wide/from16 v6, v23

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/google/protobuf/t0;->parseMapField(Ljava/lang/Object;[BIIIJLcom/google/protobuf/h$b;)I

    move-result v0

    if-eq v0, v15, :cond_39a

    goto :goto_335

    :cond_379
    :goto_379
    move/from16 v8, p5

    move v2, v15

    :goto_37c
    move/from16 v9, v21

    goto :goto_39e

    :cond_37f
    move-object/from16 v0, p0

    move v8, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, v21

    move/from16 v6, v22

    move-wide/from16 v10, v23

    move/from16 v12, v20

    move-object/from16 v13, p6

    invoke-direct/range {v0 .. v13}, Lcom/google/protobuf/t0;->parseOneofField(Ljava/lang/Object;[BIIIIIIIJILcom/google/protobuf/h$b;)I

    move-result v0

    if-eq v0, v15, :cond_39a

    goto :goto_335

    :cond_39a
    move/from16 v8, p5

    move v2, v0

    goto :goto_37c

    :goto_39e
    if-ne v9, v8, :cond_3ae

    if-eqz v8, :cond_3ae

    const v1, 0xfffff

    move-object/from16 v10, p0

    move v6, v2

    move/from16 v0, v17

    move/from16 v5, v19

    goto/16 :goto_404

    :cond_3ae
    move-object/from16 v10, p0

    iget-boolean v0, v10, Lcom/google/protobuf/t0;->hasExtensions:Z

    move-object/from16 v11, p6

    if-eqz v0, :cond_3d0

    iget-object v0, v11, Lcom/google/protobuf/h$b;->extensionRegistry:Lcom/google/protobuf/ExtensionRegistryLite;

    invoke-static {}, Lcom/google/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/google/protobuf/ExtensionRegistryLite;

    move-result-object v1

    if-eq v0, v1, :cond_3d0

    iget-object v5, v10, Lcom/google/protobuf/t0;->defaultInstance:Lcom/google/protobuf/q0;

    iget-object v6, v10, Lcom/google/protobuf/t0;->unknownFieldSchema:Lcom/google/protobuf/y1;

    move v0, v9

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v4, p1

    move-object/from16 v7, p6

    invoke-static/range {v0 .. v7}, Lcom/google/protobuf/h;->decodeExtensionOrUnknownField(I[BIILjava/lang/Object;Lcom/google/protobuf/q0;Lcom/google/protobuf/y1;Lcom/google/protobuf/h$b;)I

    move-result v0

    goto :goto_3df

    :cond_3d0
    invoke-static/range {p1 .. p1}, Lcom/google/protobuf/t0;->getMutableUnknownFields(Ljava/lang/Object;)Lcom/google/protobuf/UnknownFieldSetLite;

    move-result-object v4

    move v0, v9

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/h;->decodeUnknownField(I[BIILcom/google/protobuf/UnknownFieldSetLite;Lcom/google/protobuf/h$b;)I

    move-result v0

    :goto_3df
    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move v3, v9

    move-object v15, v10

    move-object v9, v11

    move/from16 v6, v17

    move/from16 v5, v19

    move/from16 v2, v20

    move/from16 v1, v22

    move-object/from16 v10, v25

    move v11, v8

    goto/16 :goto_1c

    :cond_3f5
    move/from16 v19, v5

    move/from16 v17, v6

    move-object/from16 v25, v10

    move v8, v11

    move-object v10, v15

    move v6, v0

    move v9, v3

    move/from16 v0, v17

    const v1, 0xfffff

    :goto_404
    if-eq v0, v1, :cond_40f

    int-to-long v0, v0

    move-object/from16 v7, p1

    move-object/from16 v2, v25

    invoke-virtual {v2, v7, v0, v1, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_411

    :cond_40f
    move-object/from16 v7, p1

    :goto_411
    const/4 v0, 0x0

    iget v1, v10, Lcom/google/protobuf/t0;->checkInitializedCount:I

    move-object v3, v0

    move v11, v1

    :goto_416
    iget v0, v10, Lcom/google/protobuf/t0;->repeatedFieldOffsetStart:I

    if-ge v11, v0, :cond_430

    iget-object v0, v10, Lcom/google/protobuf/t0;->intArray:[I

    aget v2, v0, v11

    iget-object v4, v10, Lcom/google/protobuf/t0;->unknownFieldSchema:Lcom/google/protobuf/y1;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/t0;->filterMapUnknownEnumValues(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/protobuf/y1;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/google/protobuf/UnknownFieldSetLite;

    add-int/lit8 v11, v11, 0x1

    goto :goto_416

    :cond_430
    if-eqz v3, :cond_437

    iget-object v0, v10, Lcom/google/protobuf/t0;->unknownFieldSchema:Lcom/google/protobuf/y1;

    invoke-virtual {v0, v7, v3}, Lcom/google/protobuf/y1;->setBuilderToMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_437
    if-nez v8, :cond_443

    move/from16 v0, p4

    if-ne v6, v0, :cond_43e

    goto :goto_449

    :cond_43e
    invoke-static {}, Lcom/google/protobuf/d0;->parseFailure()Lcom/google/protobuf/d0;

    move-result-object v0

    throw v0

    :cond_443
    move/from16 v0, p4

    if-gt v6, v0, :cond_44a

    if-ne v9, v8, :cond_44a

    :goto_449
    return v6

    :cond_44a
    invoke-static {}, Lcom/google/protobuf/d0;->parseFailure()Lcom/google/protobuf/d0;

    move-result-object v0

    throw v0

    nop

    :pswitch_data_450
    .packed-switch 0x0
        :pswitch_27b
        :pswitch_262
        :pswitch_23c
        :pswitch_23c
        :pswitch_222
        :pswitch_1ff
        :pswitch_1e7
        :pswitch_1c4
        :pswitch_19f
        :pswitch_179
        :pswitch_15e
        :pswitch_222
        :pswitch_122
        :pswitch_1e7
        :pswitch_1ff
        :pswitch_104
        :pswitch_e0
        :pswitch_9e
    .end packed-switch
.end method

.method public writeTo(Ljava/lang/Object;Lcom/google/protobuf/Writer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/protobuf/Writer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p2}, Lcom/google/protobuf/Writer;->fieldOrder()Lcom/google/protobuf/Writer$FieldOrder;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Writer$FieldOrder;->DESCENDING:Lcom/google/protobuf/Writer$FieldOrder;

    if-ne v0, v1, :cond_c

    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/t0;->writeFieldsInDescendingOrder(Ljava/lang/Object;Lcom/google/protobuf/Writer;)V

    goto :goto_17

    :cond_c
    iget-boolean v0, p0, Lcom/google/protobuf/t0;->proto3:Z

    if-eqz v0, :cond_14

    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/t0;->writeFieldsInAscendingOrderProto3(Ljava/lang/Object;Lcom/google/protobuf/Writer;)V

    goto :goto_17

    :cond_14
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/t0;->writeFieldsInAscendingOrderProto2(Ljava/lang/Object;Lcom/google/protobuf/Writer;)V

    :goto_17
    return-void
.end method
