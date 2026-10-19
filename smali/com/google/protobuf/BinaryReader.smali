###### Class com.google.protobuf.BinaryReader (com.google.protobuf.BinaryReader)
.class abstract Lcom/google/protobuf/BinaryReader;
.super Ljava/lang/Object;
.source "BinaryReader.java"

# interfaces
.implements Lcom/google/protobuf/j1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/BinaryReader$b;
    }
.end annotation


# static fields
.field private static final FIXED32_MULTIPLE_MASK:I = 0x3

.field private static final FIXED64_MULTIPLE_MASK:I = 0x7


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/BinaryReader$a;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/nio/ByteBuffer;Z)Lcom/google/protobuf/BinaryReader;
    .registers 3

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Lcom/google/protobuf/BinaryReader$b;

    invoke-direct {v0, p0, p1}, Lcom/google/protobuf/BinaryReader$b;-><init>(Ljava/nio/ByteBuffer;Z)V

    return-object v0

    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Direct buffers not yet supported"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public abstract synthetic getFieldNumber()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract synthetic getTag()I
.end method

.method public abstract getTotalBytesRead()I
.end method

.method public abstract synthetic mergeGroupField(Ljava/lang/Object;Lcom/google/protobuf/l1;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/google/protobuf/l1<",
            "TT;>;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract synthetic mergeMessageField(Ljava/lang/Object;Lcom/google/protobuf/l1;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/google/protobuf/l1<",
            "TT;>;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract synthetic readBool()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract synthetic readBoolList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract synthetic readBytes()Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract synthetic readBytesList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/protobuf/ByteString;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract synthetic readDouble()D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract synthetic readDoubleList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract synthetic readEnum()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract synthetic readEnumList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract synthetic readFixed32()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract synthetic readFixed32List(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract synthetic readFixed64()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract synthetic readFixed64List(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract synthetic readFloat()F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract synthetic readFloatList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract synthetic readGroup(Ljava/lang/Class;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract synthetic readGroupBySchemaWithCheck(Lcom/google/protobuf/l1;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/l1<",
            "TT;>;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract synthetic readGroupList(Ljava/util/List;Lcom/google/protobuf/l1;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/google/protobuf/l1<",
            "TT;>;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract synthetic readGroupList(Ljava/util/List;Ljava/lang/Class;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract synthetic readInt32()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract synthetic readInt32List(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract synthetic readInt64()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract synthetic readInt64List(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract synthetic readMap(Ljava/util/Map;Lcom/google/protobuf/MapEntryLite$b;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lcom/google/protobuf/MapEntryLite$b<",
            "TK;TV;>;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract synthetic readMessage(Ljava/lang/Class;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract synthetic readMessageBySchemaWithCheck(Lcom/google/protobuf/l1;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/l1<",
            "TT;>;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract synthetic readMessageList(Ljava/util/List;Lcom/google/protobuf/l1;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/google/protobuf/l1<",
            "TT;>;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract synthetic readMessageList(Ljava/util/List;Ljava/lang/Class;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract synthetic readSFixed32()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract synthetic readSFixed32List(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract synthetic readSFixed64()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract synthetic readSFixed64List(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract synthetic readSInt32()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract synthetic readSInt32List(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract synthetic readSInt64()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract synthetic readSInt64List(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract synthetic readString()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract synthetic readStringList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract synthetic readStringListRequireUtf8(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract synthetic readStringRequireUtf8()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract synthetic readUInt32()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract synthetic readUInt32List(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract synthetic readUInt64()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract synthetic readUInt64List(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public shouldDiscardUnknownFields()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public abstract synthetic skipField()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

###### Class com.google.protobuf.BinaryReader.a (com.google.protobuf.BinaryReader$a)
.class synthetic Lcom/google/protobuf/BinaryReader$a;
.super Ljava/lang/Object;
.source "BinaryReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/BinaryReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$google$protobuf$WireFormat$FieldType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/google/protobuf/WireFormat$FieldType;->values()[Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/protobuf/BinaryReader$a;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    :try_start_9
    sget-object v1, Lcom/google/protobuf/WireFormat$FieldType;->BOOL:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/google/protobuf/BinaryReader$a;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v1, Lcom/google/protobuf/WireFormat$FieldType;->BYTES:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lcom/google/protobuf/BinaryReader$a;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v1, Lcom/google/protobuf/WireFormat$FieldType;->DOUBLE:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Lcom/google/protobuf/BinaryReader$a;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v1, Lcom/google/protobuf/WireFormat$FieldType;->ENUM:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    :try_start_33
    sget-object v0, Lcom/google/protobuf/BinaryReader$a;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v1, Lcom/google/protobuf/WireFormat$FieldType;->FIXED32:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_3e

    :catch_3e
    :try_start_3e
    sget-object v0, Lcom/google/protobuf/BinaryReader$a;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v1, Lcom/google/protobuf/WireFormat$FieldType;->FIXED64:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_49

    :catch_49
    :try_start_49
    sget-object v0, Lcom/google/protobuf/BinaryReader$a;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v1, Lcom/google/protobuf/WireFormat$FieldType;->FLOAT:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_54

    :catch_54
    :try_start_54
    sget-object v0, Lcom/google/protobuf/BinaryReader$a;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v1, Lcom/google/protobuf/WireFormat$FieldType;->INT32:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_60
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_60} :catch_60

    :catch_60
    :try_start_60
    sget-object v0, Lcom/google/protobuf/BinaryReader$a;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v1, Lcom/google/protobuf/WireFormat$FieldType;->INT64:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_6c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_60 .. :try_end_6c} :catch_6c

    :catch_6c
    :try_start_6c
    sget-object v0, Lcom/google/protobuf/BinaryReader$a;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v1, Lcom/google/protobuf/WireFormat$FieldType;->MESSAGE:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_78
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6c .. :try_end_78} :catch_78

    :catch_78
    :try_start_78
    sget-object v0, Lcom/google/protobuf/BinaryReader$a;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v1, Lcom/google/protobuf/WireFormat$FieldType;->SFIXED32:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_84
    .catch Ljava/lang/NoSuchFieldError; {:try_start_78 .. :try_end_84} :catch_84

    :catch_84
    :try_start_84
    sget-object v0, Lcom/google/protobuf/BinaryReader$a;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v1, Lcom/google/protobuf/WireFormat$FieldType;->SFIXED64:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_90
    .catch Ljava/lang/NoSuchFieldError; {:try_start_84 .. :try_end_90} :catch_90

    :catch_90
    :try_start_90
    sget-object v0, Lcom/google/protobuf/BinaryReader$a;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v1, Lcom/google/protobuf/WireFormat$FieldType;->SINT32:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_9c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_90 .. :try_end_9c} :catch_9c

    :catch_9c
    :try_start_9c
    sget-object v0, Lcom/google/protobuf/BinaryReader$a;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v1, Lcom/google/protobuf/WireFormat$FieldType;->SINT64:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_a8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9c .. :try_end_a8} :catch_a8

    :catch_a8
    :try_start_a8
    sget-object v0, Lcom/google/protobuf/BinaryReader$a;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v1, Lcom/google/protobuf/WireFormat$FieldType;->STRING:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_b4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a8 .. :try_end_b4} :catch_b4

    :catch_b4
    :try_start_b4
    sget-object v0, Lcom/google/protobuf/BinaryReader$a;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v1, Lcom/google/protobuf/WireFormat$FieldType;->UINT32:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_c0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b4 .. :try_end_c0} :catch_c0

    :catch_c0
    :try_start_c0
    sget-object v0, Lcom/google/protobuf/BinaryReader$a;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v1, Lcom/google/protobuf/WireFormat$FieldType;->UINT64:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_cc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c0 .. :try_end_cc} :catch_cc

    :catch_cc
    return-void
.end method

###### Class com.google.protobuf.BinaryReader.b (com.google.protobuf.BinaryReader$b)
.class final Lcom/google/protobuf/BinaryReader$b;
.super Lcom/google/protobuf/BinaryReader;
.source "BinaryReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/BinaryReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final buffer:[B

.field private final bufferIsImmutable:Z

.field private endGroupTag:I

.field private final initialPos:I

.field private limit:I

.field private pos:I

.field private tag:I


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;Z)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryReader;-><init>(Lcom/google/protobuf/BinaryReader$a;)V

    iput-boolean p2, p0, Lcom/google/protobuf/BinaryReader$b;->bufferIsImmutable:Z

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/BinaryReader$b;->buffer:[B

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result p2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr p2, v0

    iput p2, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    iput p2, p0, Lcom/google/protobuf/BinaryReader$b;->initialPos:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result p2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p1

    add-int/2addr p2, p1

    iput p2, p0, Lcom/google/protobuf/BinaryReader$b;->limit:I

    return-void
.end method

.method private isAtEnd()Z
    .registers 3

    iget v0, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    iget v1, p0, Lcom/google/protobuf/BinaryReader$b;->limit:I

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private readByte()B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    iget v1, p0, Lcom/google/protobuf/BinaryReader$b;->limit:I

    if-eq v0, v1, :cond_f

    iget-object v1, p0, Lcom/google/protobuf/BinaryReader$b;->buffer:[B

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    aget-byte v0, v1, v0

    return v0

    :cond_f
    invoke-static {}, Lcom/google/protobuf/d0;->truncatedMessage()Lcom/google/protobuf/d0;

    move-result-object v0

    throw v0
.end method

.method private readField(Lcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Class;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/WireFormat$FieldType;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/BinaryReader$a;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_a0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "unsupported field type."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_13
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$b;->readUInt64()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :pswitch_1c
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$b;->readUInt32()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_25
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$b;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_2a
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$b;->readSInt64()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :pswitch_33
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$b;->readSInt32()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_3c
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$b;->readSFixed64()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :pswitch_45
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$b;->readSFixed32()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_4e
    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/BinaryReader$b;->readMessage(Ljava/lang/Class;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_53
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$b;->readInt64()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :pswitch_5c
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$b;->readInt32()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_65
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$b;->readFloat()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :pswitch_6e
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$b;->readFixed64()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :pswitch_77
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$b;->readFixed32()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_80
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$b;->readEnum()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_89
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$b;->readDouble()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :pswitch_92
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$b;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1

    :pswitch_97
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$b;->readBool()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :pswitch_data_a0
    .packed-switch 0x1
        :pswitch_97
        :pswitch_92
        :pswitch_89
        :pswitch_80
        :pswitch_77
        :pswitch_6e
        :pswitch_65
        :pswitch_5c
        :pswitch_53
        :pswitch_4e
        :pswitch_45
        :pswitch_3c
        :pswitch_33
        :pswitch_2a
        :pswitch_25
        :pswitch_1c
        :pswitch_13
    .end packed-switch
.end method

.method private readGroup(Lcom/google/protobuf/l1;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/l1<",
            "TT;>;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lcom/google/protobuf/l1;->newInstance()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/protobuf/BinaryReader$b;->mergeGroupField(Ljava/lang/Object;Lcom/google/protobuf/l1;Lcom/google/protobuf/ExtensionRegistryLite;)V

    invoke-interface {p1, v0}, Lcom/google/protobuf/l1;->makeImmutable(Ljava/lang/Object;)V

    return-object v0
.end method

.method private readLittleEndian32()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryReader$b;->requireBytes(I)V

    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->readLittleEndian32_NoCheck()I

    move-result v0

    return v0
.end method

.method private readLittleEndian32_NoCheck()I
    .registers 5

    iget v0, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    iget-object v1, p0, Lcom/google/protobuf/BinaryReader$b;->buffer:[B

    add-int/lit8 v2, v0, 0x4

    iput v2, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    aget-byte v2, v1, v0

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x2

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x3

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v2

    return v0
.end method

.method private readLittleEndian64()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryReader$b;->requireBytes(I)V

    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->readLittleEndian64_NoCheck()J

    move-result-wide v0

    return-wide v0
.end method

.method private readLittleEndian64_NoCheck()J
    .registers 10

    iget v0, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    iget-object v1, p0, Lcom/google/protobuf/BinaryReader$b;->buffer:[B

    add-int/lit8 v2, v0, 0x8

    iput v2, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    aget-byte v2, v1, v0

    int-to-long v2, v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    add-int/lit8 v6, v0, 0x1

    aget-byte v6, v1, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x8

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    add-int/lit8 v6, v0, 0x2

    aget-byte v6, v1, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x10

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    add-int/lit8 v6, v0, 0x3

    aget-byte v6, v1, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x18

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    add-int/lit8 v6, v0, 0x4

    aget-byte v6, v1, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x20

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    add-int/lit8 v6, v0, 0x5

    aget-byte v6, v1, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x28

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    add-int/lit8 v6, v0, 0x6

    aget-byte v6, v1, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x30

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    add-int/lit8 v0, v0, 0x7

    aget-byte v0, v1, v0

    int-to-long v0, v0

    and-long/2addr v0, v4

    const/16 v4, 0x38

    shl-long/2addr v0, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private readMessage(Lcom/google/protobuf/l1;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/l1<",
            "TT;>;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lcom/google/protobuf/l1;->newInstance()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/protobuf/BinaryReader$b;->mergeMessageField(Ljava/lang/Object;Lcom/google/protobuf/l1;Lcom/google/protobuf/ExtensionRegistryLite;)V

    invoke-interface {p1, v0}, Lcom/google/protobuf/l1;->makeImmutable(Ljava/lang/Object;)V

    return-object v0
.end method

.method private readVarint32()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    iget v1, p0, Lcom/google/protobuf/BinaryReader$b;->limit:I

    if-eq v1, v0, :cond_77

    iget-object v2, p0, Lcom/google/protobuf/BinaryReader$b;->buffer:[B

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, v2, v0

    if-ltz v0, :cond_11

    iput v3, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    return v0

    :cond_11
    sub-int/2addr v1, v3

    const/16 v4, 0x9

    if-ge v1, v4, :cond_1c

    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->readVarint64SlowPath()J

    move-result-wide v0

    long-to-int v1, v0

    return v1

    :cond_1c
    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x7

    xor-int/2addr v0, v3

    if-gez v0, :cond_28

    xor-int/lit8 v0, v0, -0x80

    goto :goto_74

    :cond_28
    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v0, v1

    if-ltz v0, :cond_35

    xor-int/lit16 v0, v0, 0x3f80

    :cond_33
    move v1, v3

    goto :goto_74

    :cond_35
    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x15

    xor-int/2addr v0, v3

    if-gez v0, :cond_43

    const v2, -0x1fc080

    xor-int/2addr v0, v2

    goto :goto_74

    :cond_43
    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    shl-int/lit8 v4, v1, 0x1c

    xor-int/2addr v0, v4

    const v4, 0xfe03f80

    xor-int/2addr v0, v4

    if-gez v1, :cond_33

    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    if-gez v3, :cond_74

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    if-gez v1, :cond_33

    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    if-gez v3, :cond_74

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    if-gez v1, :cond_33

    add-int/lit8 v1, v3, 0x1

    aget-byte v2, v2, v3

    if-ltz v2, :cond_6f

    goto :goto_74

    :cond_6f
    invoke-static {}, Lcom/google/protobuf/d0;->malformedVarint()Lcom/google/protobuf/d0;

    move-result-object v0

    throw v0

    :cond_74
    :goto_74
    iput v1, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    return v0

    :cond_77
    invoke-static {}, Lcom/google/protobuf/d0;->truncatedMessage()Lcom/google/protobuf/d0;

    move-result-object v0

    throw v0
.end method

.method private readVarint64SlowPath()J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_3
    const/16 v3, 0x40

    if-ge v2, v3, :cond_18

    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->readByte()B

    move-result v3

    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_15

    return-wide v0

    :cond_15
    add-int/lit8 v2, v2, 0x7

    goto :goto_3

    :cond_18
    invoke-static {}, Lcom/google/protobuf/d0;->malformedVarint()Lcom/google/protobuf/d0;

    move-result-object v0

    throw v0
.end method

.method private requireBytes(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_a

    iget v0, p0, Lcom/google/protobuf/BinaryReader$b;->limit:I

    iget v1, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_a

    return-void

    :cond_a
    invoke-static {}, Lcom/google/protobuf/d0;->truncatedMessage()Lcom/google/protobuf/d0;

    move-result-object p1

    throw p1
.end method

.method private requirePosition(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    invoke-static {}, Lcom/google/protobuf/d0;->truncatedMessage()Lcom/google/protobuf/d0;

    move-result-object p1

    throw p1
.end method

.method private requireWireType(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/protobuf/BinaryReader$b;->tag:I

    invoke-static {v0}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    if-ne v0, p1, :cond_9

    return-void

    :cond_9
    invoke-static {}, Lcom/google/protobuf/d0;->invalidWireType()Lcom/google/protobuf/d0$a;

    move-result-object p1

    throw p1
.end method

.method private skipBytes(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/protobuf/BinaryReader$b;->requireBytes(I)V

    iget v0, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    return-void
.end method

.method private skipGroup()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/protobuf/BinaryReader$b;->endGroupTag:I

    iget v1, p0, Lcom/google/protobuf/BinaryReader$b;->tag:I

    invoke-static {v1}, Lcom/google/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/google/protobuf/WireFormat;->makeTag(II)I

    move-result v1

    iput v1, p0, Lcom/google/protobuf/BinaryReader$b;->endGroupTag:I

    :cond_f
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$b;->getFieldNumber()I

    move-result v1

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_1e

    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$b;->skipField()Z

    move-result v1

    if-nez v1, :cond_f

    :cond_1e
    iget v1, p0, Lcom/google/protobuf/BinaryReader$b;->tag:I

    iget v2, p0, Lcom/google/protobuf/BinaryReader$b;->endGroupTag:I

    if-ne v1, v2, :cond_27

    iput v0, p0, Lcom/google/protobuf/BinaryReader$b;->endGroupTag:I

    return-void

    :cond_27
    invoke-static {}, Lcom/google/protobuf/d0;->parseFailure()Lcom/google/protobuf/d0;

    move-result-object v0

    throw v0
.end method

.method private skipVarint()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/protobuf/BinaryReader$b;->limit:I

    iget v1, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    sub-int/2addr v0, v1

    const/16 v2, 0xa

    if-lt v0, v2, :cond_1b

    iget-object v0, p0, Lcom/google/protobuf/BinaryReader$b;->buffer:[B

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v2, :cond_1b

    add-int/lit8 v4, v1, 0x1

    aget-byte v1, v0, v1

    if-ltz v1, :cond_17

    iput v4, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    return-void

    :cond_17
    add-int/lit8 v3, v3, 0x1

    move v1, v4

    goto :goto_c

    :cond_1b
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->skipVarintSlowPath()V

    return-void
.end method

.method private skipVarintSlowPath()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0xa

    if-ge v0, v1, :cond_f

    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->readByte()B

    move-result v1

    if-ltz v1, :cond_c

    return-void

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_f
    invoke-static {}, Lcom/google/protobuf/d0;->malformedVarint()Lcom/google/protobuf/d0;

    move-result-object v0

    throw v0
.end method

.method private verifyPackedFixed32Length(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/protobuf/BinaryReader$b;->requireBytes(I)V

    and-int/lit8 p1, p1, 0x3

    if-nez p1, :cond_8

    return-void

    :cond_8
    invoke-static {}, Lcom/google/protobuf/d0;->parseFailure()Lcom/google/protobuf/d0;

    move-result-object p1

    throw p1
.end method

.method private verifyPackedFixed64Length(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/protobuf/BinaryReader$b;->requireBytes(I)V

    and-int/lit8 p1, p1, 0x7

    if-nez p1, :cond_8

    return-void

    :cond_8
    invoke-static {}, Lcom/google/protobuf/d0;->parseFailure()Lcom/google/protobuf/d0;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public getFieldNumber()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->isAtEnd()Z

    move-result v0

    const v1, 0x7fffffff

    if-eqz v0, :cond_a

    return v1

    :cond_a
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->readVarint32()I

    move-result v0

    iput v0, p0, Lcom/google/protobuf/BinaryReader$b;->tag:I

    iget v2, p0, Lcom/google/protobuf/BinaryReader$b;->endGroupTag:I

    if-ne v0, v2, :cond_15

    return v1

    :cond_15
    invoke-static {v0}, Lcom/google/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v0

    return v0
.end method

.method public getTag()I
    .registers 2

    iget v0, p0, Lcom/google/protobuf/BinaryReader$b;->tag:I

    return v0
.end method

.method public getTotalBytesRead()I
    .registers 3

    iget v0, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    iget v1, p0, Lcom/google/protobuf/BinaryReader$b;->initialPos:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public mergeGroupField(Ljava/lang/Object;Lcom/google/protobuf/l1;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/google/protobuf/l1<",
            "TT;>;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/protobuf/BinaryReader$b;->endGroupTag:I

    iget v1, p0, Lcom/google/protobuf/BinaryReader$b;->tag:I

    invoke-static {v1}, Lcom/google/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/google/protobuf/WireFormat;->makeTag(II)I

    move-result v1

    iput v1, p0, Lcom/google/protobuf/BinaryReader$b;->endGroupTag:I

    :try_start_f
    invoke-interface {p2, p1, p0, p3}, Lcom/google/protobuf/l1;->mergeFrom(Ljava/lang/Object;Lcom/google/protobuf/j1;Lcom/google/protobuf/ExtensionRegistryLite;)V

    iget p1, p0, Lcom/google/protobuf/BinaryReader$b;->tag:I

    iget p2, p0, Lcom/google/protobuf/BinaryReader$b;->endGroupTag:I
    :try_end_16
    .catchall {:try_start_f .. :try_end_16} :catchall_20

    if-ne p1, p2, :cond_1b

    iput v0, p0, Lcom/google/protobuf/BinaryReader$b;->endGroupTag:I

    return-void

    :cond_1b
    :try_start_1b
    invoke-static {}, Lcom/google/protobuf/d0;->parseFailure()Lcom/google/protobuf/d0;

    move-result-object p1

    throw p1
    :try_end_20
    .catchall {:try_start_1b .. :try_end_20} :catchall_20

    :catchall_20
    move-exception p1

    iput v0, p0, Lcom/google/protobuf/BinaryReader$b;->endGroupTag:I

    throw p1
.end method

.method public mergeMessageField(Ljava/lang/Object;Lcom/google/protobuf/l1;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/google/protobuf/l1<",
            "TT;>;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->readVarint32()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryReader$b;->requireBytes(I)V

    iget v1, p0, Lcom/google/protobuf/BinaryReader$b;->limit:I

    iget v2, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/protobuf/BinaryReader$b;->limit:I

    :try_start_e
    invoke-interface {p2, p1, p0, p3}, Lcom/google/protobuf/l1;->mergeFrom(Ljava/lang/Object;Lcom/google/protobuf/j1;Lcom/google/protobuf/ExtensionRegistryLite;)V

    iget p1, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I
    :try_end_13
    .catchall {:try_start_e .. :try_end_13} :catchall_1d

    if-ne p1, v2, :cond_18

    iput v1, p0, Lcom/google/protobuf/BinaryReader$b;->limit:I

    return-void

    :cond_18
    :try_start_18
    invoke-static {}, Lcom/google/protobuf/d0;->parseFailure()Lcom/google/protobuf/d0;

    move-result-object p1

    throw p1
    :try_end_1d
    .catchall {:try_start_18 .. :try_end_1d} :catchall_1d

    :catchall_1d
    move-exception p1

    iput v1, p0, Lcom/google/protobuf/BinaryReader$b;->limit:I

    throw p1
.end method

.method public readBool()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryReader$b;->requireWireType(I)V

    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->readVarint32()I

    move-result v1

    if-eqz v1, :cond_b

    const/4 v0, 0x1

    :cond_b
    return v0
.end method

.method public readBoolList(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/google/protobuf/BooleanArrayList;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_50

    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/BooleanArrayList;

    iget p1, p0, Lcom/google/protobuf/BinaryReader$b;->tag:I

    invoke-static {p1}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result p1

    if-eqz p1, :cond_35

    if-ne p1, v3, :cond_30

    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->readVarint32()I

    move-result p1

    iget v3, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    add-int/2addr v3, p1

    :goto_1b
    iget p1, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    if-ge p1, v3, :cond_2c

    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->readVarint32()I

    move-result p1

    if-eqz p1, :cond_27

    const/4 p1, 0x1

    goto :goto_28

    :cond_27
    const/4 p1, 0x0

    :goto_28
    invoke-virtual {v0, p1}, Lcom/google/protobuf/BooleanArrayList;->addBoolean(Z)V

    goto :goto_1b

    :cond_2c
    invoke-direct {p0, v3}, Lcom/google/protobuf/BinaryReader$b;->requirePosition(I)V

    goto :goto_79

    :cond_30
    invoke-static {}, Lcom/google/protobuf/d0;->invalidWireType()Lcom/google/protobuf/d0$a;

    move-result-object p1

    throw p1

    :cond_35
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$b;->readBool()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/BooleanArrayList;->addBoolean(Z)V

    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->isAtEnd()Z

    move-result p1

    if-eqz p1, :cond_43

    return-void

    :cond_43
    iget p1, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->readVarint32()I

    move-result v1

    iget v2, p0, Lcom/google/protobuf/BinaryReader$b;->tag:I

    if-eq v1, v2, :cond_35

    iput p1, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    return-void

    :cond_50
    iget v0, p0, Lcom/google/protobuf/BinaryReader$b;->tag:I

    invoke-static {v0}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    if-eqz v0, :cond_7f

    if-ne v0, v3, :cond_7a

    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->readVarint32()I

    move-result v0

    iget v3, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    add-int/2addr v3, v0

    :goto_61
    iget v0, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    if-ge v0, v3, :cond_76

    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->readVarint32()I

    move-result v0

    if-eqz v0, :cond_6d

    const/4 v0, 0x1

    goto :goto_6e

    :cond_6d
    const/4 v0, 0x0

    :goto_6e
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_61

    :cond_76
    invoke-direct {p0, v3}, Lcom/google/protobuf/BinaryReader$b;->requirePosition(I)V

    :goto_79
    return-void

    :cond_7a
    invoke-static {}, Lcom/google/protobuf/d0;->invalidWireType()Lcom/google/protobuf/d0$a;

    move-result-object p1

    throw p1

    :cond_7f
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$b;->readBool()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_91

    return-void

    :cond_91
    iget v0, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->readVarint32()I

    move-result v1

    iget v2, p0, Lcom/google/protobuf/BinaryReader$b;->tag:I

    if-eq v1, v2, :cond_7f

    iput v0, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    return-void
.end method

.method public readBytes()Lcom/google/protobuf/ByteString;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryReader$b;->requireWireType(I)V

    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->readVarint32()I

    move-result v0

    if-nez v0, :cond_d

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    return-object v0

    :cond_d
    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryReader$b;->requireBytes(I)V

    iget-boolean v1, p0, Lcom/google/protobuf/BinaryReader$b;->bufferIsImmutable:Z

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/google/protobuf/BinaryReader$b;->buffer:[B

    iget v2, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    invoke-static {v1, v2, v0}, Lcom/google/protobuf/ByteString;->wrap([BII)Lcom/google/protobuf/ByteString;

    move-result-object v1

    goto :goto_25

    :cond_1d
    iget-object v1, p0, Lcom/google/protobuf/BinaryReader$b;->buffer:[B

    iget v2, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    invoke-static {v1, v2, v0}, Lcom/google/protobuf/ByteString;->copyFrom([BII)Lcom/google/protobuf/ByteString;

    move-result-object v1

    :goto_25
    iget v2, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    return-object v1
.end method

.method public readBytesList(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/protobuf/ByteString;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/protobuf/BinaryReader$b;->tag:I

    invoke-static {v0}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_24

    :cond_9
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$b;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_17

    return-void

    :cond_17
    iget v0, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->readVarint32()I

    move-result v1

    iget v2, p0, Lcom/google/protobuf/BinaryReader$b;->tag:I

    if-eq v1, v2, :cond_9

    iput v0, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    return-void

    :cond_24
    invoke-static {}, Lcom/google/protobuf/d0;->invalidWireType()Lcom/google/protobuf/d0$a;

    move-result-object p1

    throw p1
.end method

.method public readDouble()D
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryReader$b;->requireWireType(I)V

    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->readLittleEndian64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public readDoubleList(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/google/protobuf/DoubleArrayList;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_4d

    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/DoubleArrayList;

    iget p1, p0, Lcom/google/protobuf/BinaryReader$b;->tag:I

    invoke-static {p1}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result p1

    if-eq p1, v2, :cond_32

    if-ne p1, v1, :cond_2d

    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->readVarint32()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/google/protobuf/BinaryReader$b;->verifyPackedFixed64Length(I)V

    iget v1, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    add-int/2addr v1, p1

    :goto_1d
    iget p1, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    if-ge p1, v1, :cond_75

    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->readLittleEndian64_NoCheck()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/protobuf/DoubleArrayList;->addDouble(D)V

    goto :goto_1d

    :cond_2d
    invoke-static {}, Lcom/google/protobuf/d0;->invalidWireType()Lcom/google/protobuf/d0$a;

    move-result-object p1

    throw p1

    :cond_32
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$b;->readDouble()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/DoubleArrayList;->addDouble(D)V

    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->isAtEnd()Z

    move-result p1

    if-eqz p1, :cond_40

    return-void

    :cond_40
    iget p1, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->readVarint32()I

    move-result v1

    iget v2, p0, Lcom/google/protobuf/BinaryReader$b;->tag:I

    if-eq v1, v2, :cond_32

    iput p1, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    return-void

    :cond_4d
    iget v0, p0, Lcom/google/protobuf/BinaryReader$b;->tag:I

    invoke-static {v0}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    if-eq v0, v2, :cond_7b

    if-ne v0, v1, :cond_76

    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->readVarint32()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryReader$b;->verifyPackedFixed64Length(I)V

    iget v1, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    add-int/2addr v1, v0

    :goto_61
    iget v0, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    if-ge v0, v1, :cond_75

    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->readLittleEndian64_NoCheck()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_61

    :cond_75
    return-void

    :cond_76
    invoke-static {}, Lcom/google/protobuf/d0;->invalidWireType()Lcom/google/protobuf/d0$a;

    move-result-object p1

    throw p1

    :cond_7b
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$b;->readDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_8d

    return-void

    :cond_8d
    iget v0, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->readVarint32()I

    move-result v1

    iget v2, p0, Lcom/google/protobuf/BinaryReader$b;->tag:I

    if-eq v1, v2, :cond_7b

    iput v0, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    return-void
.end method

.method public readEnum()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryReader$b;->requireWireType(I)V

    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->readVarint32()I

    move-result v0

    return v0
.end method

.method public readEnumList(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/google/protobuf/IntArrayList;

    const/4 v1, 0x2

    if-eqz v0, :cond_45

    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/IntArrayList;

    iget p1, p0, Lcom/google/protobuf/BinaryReader$b;->tag:I

    invoke-static {p1}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result p1

    if-eqz p1, :cond_2a

    if-ne p1, v1, :cond_25

    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->readVarint32()I

    move-result p1

    iget v1, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    add-int/2addr v1, p1

    :goto_19
    iget p1, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    if-ge p1, v1, :cond_66

    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->readVarint32()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/IntArrayList;->addInt(I)V

    goto :goto_19

    :cond_25
    invoke-static {}, Lcom/google/protobuf/d0;->invalidWireType()Lcom/google/protobuf/d0$a;

    move-result-object p1

    throw p1

    :cond_2a
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$b;->readEnum()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/IntArrayList;->addInt(I)V

    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->isAtEnd()Z

    move-result p1

    if-eqz p1, :cond_38

    return-void

    :cond_38
    iget p1, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->readVarint32()I

    move-result v1

    iget v2, p0, Lcom/google/protobuf/BinaryReader$b;->tag:I

    if-eq v1, v2, :cond_2a

    iput p1, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    return-void

    :cond_45
    iget v0, p0, Lcom/google/protobuf/BinaryReader$b;->tag:I

    invoke-static {v0}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    if-eqz v0, :cond_6c

    if-ne v0, v1, :cond_67

    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->readVarint32()I

    move-result v0

    iget v1, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    add-int/2addr v1, v0

    :goto_56
    iget v0, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    if-ge v0, v1, :cond_66

    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->readVarint32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_56

    :cond_66
    return-void

    :cond_67
    invoke-static {}, Lcom/google/protobuf/d0;->invalidWireType()Lcom/google/protobuf/d0$a;

    move-result-object p1

    throw p1

    :cond_6c
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$b;->readEnum()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_7e

    return-void

    :cond_7e
    iget v0, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->readVarint32()I

    move-result v1

    iget v2, p0, Lcom/google/protobuf/BinaryReader$b;->tag:I

    if-eq v1, v2, :cond_6c

    iput v0, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    return-void
.end method

.method public readFixed32()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryReader$b;->requireWireType(I)V

    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->readLittleEndian32()I

    move-result v0

    return v0
.end method

.method public readFixed32List(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/google/protobuf/IntArrayList;

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-eqz v0, :cond_48

    check-cast p1, Lcom/google/protobuf/IntArrayList;

    iget v0, p0, Lcom/google/protobuf/BinaryReader$b;->tag:I

    invoke-static {v0}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    if-eq v0, v2, :cond_32

    if-ne v0, v1, :cond_2d

    :cond_12
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$b;->readFixed32()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/IntArrayList;->addInt(I)V

    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_20

    return-void

    :cond_20
    iget v0, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->readVarint32()I

    move-result v1

    iget v2, p0, Lcom/google/protobuf/BinaryReader$b;->tag:I

    if-eq v1, v2, :cond_12

    iput v0, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    return-void

    :cond_2d
    invoke-static {}, Lcom/google/protobuf/d0;->invalidWireType()Lcom/google/protobuf/d0$a;

    move-result-object p1

    throw p1

    :cond_32
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->readVarint32()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryReader$b;->verifyPackedFixed32Length(I)V

    iget v1, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    add-int/2addr v1, v0

    :goto_3c
    iget v0, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    if-ge v0, v1, :cond_90

    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->readLittleEndian32_NoCheck()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/IntArrayList;->addInt(I)V

    goto :goto_3c

    :cond_48
    iget v0, p0, Lcom/google/protobuf/BinaryReader$b;->tag:I

    invoke-static {v0}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    if-eq v0, v2, :cond_76

    if-ne v0, v1, :cond_71

    :cond_52
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$b;->readFixed32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_64

    return-void

    :cond_64
    iget v0, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->readVarint32()I

    move-result v1

    iget v2, p0, Lcom/google/protobuf/BinaryReader$b;->tag:I

    if-eq v1, v2, :cond_52

    iput v0, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    return-void

    :cond_71
    invoke-static {}, Lcom/google/protobuf/d0;->invalidWireType()Lcom/google/protobuf/d0$a;

    move-result-object p1

    throw p1

    :cond_76
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->readVarint32()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryReader$b;->verifyPackedFixed32Length(I)V

    iget v1, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    add-int/2addr v1, v0

    :goto_80
    iget v0, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    if-ge v0, v1, :cond_90

    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->readLittleEndian32_NoCheck()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_80

    :cond_90
    return-void
.end method

.method public readFixed64()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryReader$b;->requireWireType(I)V

    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->readLittleEndian64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readFixed64List(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/google/protobuf/LongArrayList;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_49

    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/LongArrayList;

    iget p1, p0, Lcom/google/protobuf/BinaryReader$b;->tag:I

    invoke-static {p1}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result p1

    if-eq p1, v2, :cond_2e

    if-ne p1, v1, :cond_29

    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->readVarint32()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/google/protobuf/BinaryReader$b;->verifyPackedFixed64Length(I)V

    iget v1, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    add-int/2addr v1, p1

    :goto_1d
    iget p1, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    if-ge p1, v1, :cond_6d

    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->readLittleEndian64_NoCheck()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/protobuf/LongArrayList;->addLong(J)V

    goto :goto_1d

    :cond_29
    invoke-static {}, Lcom/google/protobuf/d0;->invalidWireType()Lcom/google/protobuf/d0$a;

    move-result-object p1

    throw p1

    :cond_2e
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$b;->readFixed64()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/LongArrayList;->addLong(J)V

    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->isAtEnd()Z

    move-result p1

    if-eqz p1, :cond_3c

    return-void

    :cond_3c
    iget p1, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->readVarint32()I

    move-result v1

    iget v2, p0, Lcom/google/protobuf/BinaryReader$b;->tag:I

    if-eq v1, v2, :cond_2e

    iput p1, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    return-void

    :cond_49
    iget v0, p0, Lcom/google/protobuf/BinaryReader$b;->tag:I

    invoke-static {v0}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    if-eq v0, v2, :cond_73

    if-ne v0, v1, :cond_6e

    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->readVarint32()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryReader$b;->verifyPackedFixed64Length(I)V

    iget v1, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    add-int/2addr v1, v0

    :goto_5d
    iget v0, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    if-ge v0, v1, :cond_6d

    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->readLittleEndian64_NoCheck()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5d

    :cond_6d
    return-void

    :cond_6e
    invoke-static {}, Lcom/google/protobuf/d0;->invalidWireType()Lcom/google/protobuf/d0$a;

    move-result-object p1

    throw p1

    :cond_73
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$b;->readFixed64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_85

    return-void

    :cond_85
    iget v0, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->readVarint32()I

    move-result v1

    iget v2, p0, Lcom/google/protobuf/BinaryReader$b;->tag:I

    if-eq v1, v2, :cond_73

    iput v0, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    return-void
.end method

.method public readFloat()F
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryReader$b;->requireWireType(I)V

    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->readLittleEndian32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public readFloatList(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/google/protobuf/FloatArrayList;

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-eqz v0, :cond_4c

    check-cast p1, Lcom/google/protobuf/FloatArrayList;

    iget v0, p0, Lcom/google/protobuf/BinaryReader$b;->tag:I

    invoke-static {v0}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    if-eq v0, v2, :cond_32

    if-ne v0, v1, :cond_2d

    :cond_12
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$b;->readFloat()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/FloatArrayList;->addFloat(F)V

    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_20

    return-void

    :cond_20
    iget v0, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->readVarint32()I

    move-result v1

    iget v2, p0, Lcom/google/protobuf/BinaryReader$b;->tag:I

    if-eq v1, v2, :cond_12

    iput v0, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    return-void

    :cond_2d
    invoke-static {}, Lcom/google/protobuf/d0;->invalidWireType()Lcom/google/protobuf/d0$a;

    move-result-object p1

    throw p1

    :cond_32
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->readVarint32()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryReader$b;->verifyPackedFixed32Length(I)V

    iget v1, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    add-int/2addr v1, v0

    :goto_3c
    iget v0, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    if-ge v0, v1, :cond_98

    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->readLittleEndian32_NoCheck()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/FloatArrayList;->addFloat(F)V

    goto :goto_3c

    :cond_4c
    iget v0, p0, Lcom/google/protobuf/BinaryReader$b;->tag:I

    invoke-static {v0}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    if-eq v0, v2, :cond_7a

    if-ne v0, v1, :cond_75

    :cond_56
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$b;->readFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_68

    return-void

    :cond_68
    iget v0, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->readVarint32()I

    move-result v1

    iget v2, p0, Lcom/google/protobuf/BinaryReader$b;->tag:I

    if-eq v1, v2, :cond_56

    iput v0, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    return-void

    :cond_75
    invoke-static {}, Lcom/google/protobuf/d0;->invalidWireType()Lcom/google/protobuf/d0$a;

    move-result-object p1

    throw p1

    :cond_7a
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->readVarint32()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryReader$b;->verifyPackedFixed32Length(I)V

    iget v1, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    add-int/2addr v1, v0

    :goto_84
    iget v0, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    if-ge v0, v1, :cond_98

    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->readLittleEndian32_NoCheck()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_84

    :cond_98
    return-void
.end method

.method public readGroup(Ljava/lang/Class;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryReader$b;->requireWireType(I)V

    invoke-static {}, Lcom/google/protobuf/Protobuf;->getInstance()Lcom/google/protobuf/Protobuf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/google/protobuf/l1;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/BinaryReader$b;->readGroup(Lcom/google/protobuf/l1;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public readGroupBySchemaWithCheck(Lcom/google/protobuf/l1;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/l1<",
            "TT;>;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryReader$b;->requireWireType(I)V

    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/BinaryReader$b;->readGroup(Lcom/google/protobuf/l1;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public readGroupList(Ljava/util/List;Lcom/google/protobuf/l1;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/google/protobuf/l1<",
            "TT;>;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lcom/google/protobuf/BinaryReader$b;->tag:I

    invoke-static {v0}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_24

    iget v0, p0, Lcom/google/protobuf/BinaryReader$b;->tag:I

    :cond_b
    invoke-direct {p0, p2, p3}, Lcom/google/protobuf/BinaryReader$b;->readGroup(Lcom/google/protobuf/l1;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_19

    return-void

    :cond_19
    iget v1, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->readVarint32()I

    move-result v2

    if-eq v2, v0, :cond_b

    iput v1, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    return-void

    :cond_24
    invoke-static {}, Lcom/google/protobuf/d0;->invalidWireType()Lcom/google/protobuf/d0$a;

    move-result-object p1

    throw p1
.end method

.method public readGroupList(Ljava/util/List;Ljava/lang/Class;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/google/protobuf/Protobuf;->getInstance()Lcom/google/protobuf/Protobuf;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/google/protobuf/l1;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/BinaryReader$b;->readGroupList(Ljava/util/List;Lcom/google/protobuf/l1;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method public readInt32()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryReader$b;->requireWireType(I)V

    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->readVarint32()I

    move-result v0

    return v0
.end method

.method public readInt32List(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/google/protobuf/IntArrayList;

    const/4 v1, 0x2

    if-eqz v0, :cond_49

    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/IntArrayList;

    iget p1, p0, Lcom/google/protobuf/BinaryReader$b;->tag:I

    invoke-static {p1}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result p1

    if-eqz p1, :cond_2e

    if-ne p1, v1, :cond_29

    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->readVarint32()I

    move-result p1

    iget v1, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    add-int/2addr v1, p1

    :goto_19
    iget p1, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    if-ge p1, v1, :cond_25

    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->readVarint32()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/IntArrayList;->addInt(I)V

    goto :goto_19

    :cond_25
    invoke-direct {p0, v1}, Lcom/google/protobuf/BinaryReader$b;->requirePosition(I)V

    goto :goto_6d

    :cond_29
    invoke-static {}, Lcom/google/protobuf/d0;->invalidWireType()Lcom/google/protobuf/d0$a;

    move-result-object p1

    throw p1

    :cond_2e
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$b;->readInt32()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/IntArrayList;->addInt(I)V

    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->isAtEnd()Z

    move-result p1

    if-eqz p1, :cond_3c

    return-void

    :cond_3c
    iget p1, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->readVarint32()I

    move-result v1

    iget v2, p0, Lcom/google/protobuf/BinaryReader$b;->tag:I

    if-eq v1, v2, :cond_2e

    iput p1, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    return-void

    :cond_49
    iget v0, p0, Lcom/google/protobuf/BinaryReader$b;->tag:I

    invoke-static {v0}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    if-eqz v0, :cond_73

    if-ne v0, v1, :cond_6e

    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->readVarint32()I

    move-result v0

    iget v1, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    add-int/2addr v1, v0

    :goto_5a
    iget v0, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    if-ge v0, v1, :cond_6a

    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->readVarint32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5a

    :cond_6a
    invoke-direct {p0, v1}, Lcom/google/protobuf/BinaryReader$b;->requirePosition(I)V

    :goto_6d
    return-void

    :cond_6e
    invoke-static {}, Lcom/google/protobuf/d0;->invalidWireType()Lcom/google/protobuf/d0$a;

    move-result-object p1

    throw p1

    :cond_73
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$b;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_85

    return-void

    :cond_85
    iget v0, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->readVarint32()I

    move-result v1

    iget v2, p0, Lcom/google/protobuf/BinaryReader$b;->tag:I

    if-eq v1, v2, :cond_73

    iput v0, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    return-void
.end method

.method public readInt64()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryReader$b;->requireWireType(I)V

    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$b;->readVarint64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readInt64List(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/google/protobuf/LongArrayList;

    const/4 v1, 0x2

    if-eqz v0, :cond_49

    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/LongArrayList;

    iget p1, p0, Lcom/google/protobuf/BinaryReader$b;->tag:I

    invoke-static {p1}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result p1

    if-eqz p1, :cond_2e

    if-ne p1, v1, :cond_29

    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->readVarint32()I

    move-result p1

    iget v1, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    add-int/2addr v1, p1

    :goto_19
    iget p1, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    if-ge p1, v1, :cond_25

    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$b;->readVarint64()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/protobuf/LongArrayList;->addLong(J)V

    goto :goto_19

    :cond_25
    invoke-direct {p0, v1}, Lcom/google/protobuf/BinaryReader$b;->requirePosition(I)V

    goto :goto_6d

    :cond_29
    invoke-static {}, Lcom/google/protobuf/d0;->invalidWireType()Lcom/google/protobuf/d0$a;

    move-result-object p1

    throw p1

    :cond_2e
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$b;->readInt64()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/LongArrayList;->addLong(J)V

    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->isAtEnd()Z

    move-result p1

    if-eqz p1, :cond_3c

    return-void

    :cond_3c
    iget p1, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->readVarint32()I

    move-result v1

    iget v2, p0, Lcom/google/protobuf/BinaryReader$b;->tag:I

    if-eq v1, v2, :cond_2e

    iput p1, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    return-void

    :cond_49
    iget v0, p0, Lcom/google/protobuf/BinaryReader$b;->tag:I

    invoke-static {v0}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    if-eqz v0, :cond_73

    if-ne v0, v1, :cond_6e

    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->readVarint32()I

    move-result v0

    iget v1, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    add-int/2addr v1, v0

    :goto_5a
    iget v0, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    if-ge v0, v1, :cond_6a

    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$b;->readVarint64()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5a

    :cond_6a
    invoke-direct {p0, v1}, Lcom/google/protobuf/BinaryReader$b;->requirePosition(I)V

    :goto_6d
    return-void

    :cond_6e
    invoke-static {}, Lcom/google/protobuf/d0;->invalidWireType()Lcom/google/protobuf/d0$a;

    move-result-object p1

    throw p1

    :cond_73
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$b;->readInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_85

    return-void

    :cond_85
    iget v0, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->readVarint32()I

    move-result v1

    iget v2, p0, Lcom/google/protobuf/BinaryReader$b;->tag:I

    if-eq v1, v2, :cond_73

    iput v0, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    return-void
.end method

.method public readMap(Ljava/util/Map;Lcom/google/protobuf/MapEntryLite$b;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lcom/google/protobuf/MapEntryLite$b<",
            "TK;TV;>;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryReader$b;->requireWireType(I)V

    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->readVarint32()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/google/protobuf/BinaryReader$b;->requireBytes(I)V

    iget v2, p0, Lcom/google/protobuf/BinaryReader$b;->limit:I

    iget v3, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/google/protobuf/BinaryReader$b;->limit:I

    :try_start_12
    iget-object v1, p2, Lcom/google/protobuf/MapEntryLite$b;->defaultKey:Ljava/lang/Object;

    iget-object v3, p2, Lcom/google/protobuf/MapEntryLite$b;->defaultValue:Ljava/lang/Object;

    :goto_16
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$b;->getFieldNumber()I

    move-result v4

    const v5, 0x7fffffff

    if-ne v4, v5, :cond_25

    invoke-interface {p1, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_22
    .catchall {:try_start_12 .. :try_end_22} :catchall_5b

    iput v2, p0, Lcom/google/protobuf/BinaryReader$b;->limit:I

    return-void

    :cond_25
    const/4 v5, 0x1

    const-string v6, "Unable to parse map entry."

    if-eq v4, v5, :cond_46

    if-eq v4, v0, :cond_39

    :try_start_2c
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$b;->skipField()Z

    move-result v4

    if-eqz v4, :cond_33

    goto :goto_16

    :cond_33
    new-instance v4, Lcom/google/protobuf/d0;

    invoke-direct {v4, v6}, Lcom/google/protobuf/d0;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_39
    iget-object v4, p2, Lcom/google/protobuf/MapEntryLite$b;->valueType:Lcom/google/protobuf/WireFormat$FieldType;

    iget-object v5, p2, Lcom/google/protobuf/MapEntryLite$b;->defaultValue:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-direct {p0, v4, v5, p3}, Lcom/google/protobuf/BinaryReader$b;->readField(Lcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Class;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_16

    :cond_46
    iget-object v4, p2, Lcom/google/protobuf/MapEntryLite$b;->keyType:Lcom/google/protobuf/WireFormat$FieldType;

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5, v5}, Lcom/google/protobuf/BinaryReader$b;->readField(Lcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Class;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v1
    :try_end_4d
    .catch Lcom/google/protobuf/d0$a; {:try_start_2c .. :try_end_4d} :catch_4e
    .catchall {:try_start_2c .. :try_end_4d} :catchall_5b

    goto :goto_16

    :catch_4e
    :try_start_4e
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$b;->skipField()Z

    move-result v4

    if-eqz v4, :cond_55

    goto :goto_16

    :cond_55
    new-instance p1, Lcom/google/protobuf/d0;

    invoke-direct {p1, v6}, Lcom/google/protobuf/d0;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_5b
    .catchall {:try_start_4e .. :try_end_5b} :catchall_5b

    :catchall_5b
    move-exception p1

    iput v2, p0, Lcom/google/protobuf/BinaryReader$b;->limit:I

    throw p1
.end method

.method public readMessage(Ljava/lang/Class;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryReader$b;->requireWireType(I)V

    invoke-static {}, Lcom/google/protobuf/Protobuf;->getInstance()Lcom/google/protobuf/Protobuf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/google/protobuf/l1;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/BinaryReader$b;->readMessage(Lcom/google/protobuf/l1;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public readMessageBySchemaWithCheck(Lcom/google/protobuf/l1;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/l1<",
            "TT;>;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryReader$b;->requireWireType(I)V

    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/BinaryReader$b;->readMessage(Lcom/google/protobuf/l1;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public readMessageList(Ljava/util/List;Lcom/google/protobuf/l1;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/google/protobuf/l1<",
            "TT;>;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/protobuf/BinaryReader$b;->tag:I

    invoke-static {v0}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_24

    iget v0, p0, Lcom/google/protobuf/BinaryReader$b;->tag:I

    :cond_b
    invoke-direct {p0, p2, p3}, Lcom/google/protobuf/BinaryReader$b;->readMessage(Lcom/google/protobuf/l1;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_19

    return-void

    :cond_19
    iget v1, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->readVarint32()I

    move-result v2

    if-eq v2, v0, :cond_b

    iput v1, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    return-void

    :cond_24
    invoke-static {}, Lcom/google/protobuf/d0;->invalidWireType()Lcom/google/protobuf/d0$a;

    move-result-object p1

    throw p1
.end method

.method public readMessageList(Ljava/util/List;Ljava/lang/Class;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/google/protobuf/Protobuf;->getInstance()Lcom/google/protobuf/Protobuf;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/google/protobuf/l1;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/BinaryReader$b;->readMessageList(Ljava/util/List;Lcom/google/protobuf/l1;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method public readSFixed32()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryReader$b;->requireWireType(I)V

    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->readLittleEndian32()I

    move-result v0

    return v0
.end method

.method public readSFixed32List(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/google/protobuf/IntArrayList;

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-eqz v0, :cond_48

    check-cast p1, Lcom/google/protobuf/IntArrayList;

    iget v0, p0, Lcom/google/protobuf/BinaryReader$b;->tag:I

    invoke-static {v0}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    if-eq v0, v2, :cond_32

    if-ne v0, v1, :cond_2d

    :cond_12
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$b;->readSFixed32()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/IntArrayList;->addInt(I)V

    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_20

    return-void

    :cond_20
    iget v0, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->readVarint32()I

    move-result v1

    iget v2, p0, Lcom/google/protobuf/BinaryReader$b;->tag:I

    if-eq v1, v2, :cond_12

    iput v0, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    return-void

    :cond_2d
    invoke-static {}, Lcom/google/protobuf/d0;->invalidWireType()Lcom/google/protobuf/d0$a;

    move-result-object p1

    throw p1

    :cond_32
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->readVarint32()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryReader$b;->verifyPackedFixed32Length(I)V

    iget v1, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    add-int/2addr v1, v0

    :goto_3c
    iget v0, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    if-ge v0, v1, :cond_90

    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->readLittleEndian32_NoCheck()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/IntArrayList;->addInt(I)V

    goto :goto_3c

    :cond_48
    iget v0, p0, Lcom/google/protobuf/BinaryReader$b;->tag:I

    invoke-static {v0}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    if-eq v0, v2, :cond_76

    if-ne v0, v1, :cond_71

    :cond_52
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$b;->readSFixed32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_64

    return-void

    :cond_64
    iget v0, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->readVarint32()I

    move-result v1

    iget v2, p0, Lcom/google/protobuf/BinaryReader$b;->tag:I

    if-eq v1, v2, :cond_52

    iput v0, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    return-void

    :cond_71
    invoke-static {}, Lcom/google/protobuf/d0;->invalidWireType()Lcom/google/protobuf/d0$a;

    move-result-object p1

    throw p1

    :cond_76
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->readVarint32()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryReader$b;->verifyPackedFixed32Length(I)V

    iget v1, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    add-int/2addr v1, v0

    :goto_80
    iget v0, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    if-ge v0, v1, :cond_90

    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->readLittleEndian32_NoCheck()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_80

    :cond_90
    return-void
.end method

.method public readSFixed64()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryReader$b;->requireWireType(I)V

    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->readLittleEndian64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readSFixed64List(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/google/protobuf/LongArrayList;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_49

    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/LongArrayList;

    iget p1, p0, Lcom/google/protobuf/BinaryReader$b;->tag:I

    invoke-static {p1}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result p1

    if-eq p1, v2, :cond_2e

    if-ne p1, v1, :cond_29

    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->readVarint32()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/google/protobuf/BinaryReader$b;->verifyPackedFixed64Length(I)V

    iget v1, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    add-int/2addr v1, p1

    :goto_1d
    iget p1, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    if-ge p1, v1, :cond_6d

    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->readLittleEndian64_NoCheck()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/protobuf/LongArrayList;->addLong(J)V

    goto :goto_1d

    :cond_29
    invoke-static {}, Lcom/google/protobuf/d0;->invalidWireType()Lcom/google/protobuf/d0$a;

    move-result-object p1

    throw p1

    :cond_2e
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$b;->readSFixed64()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/LongArrayList;->addLong(J)V

    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->isAtEnd()Z

    move-result p1

    if-eqz p1, :cond_3c

    return-void

    :cond_3c
    iget p1, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->readVarint32()I

    move-result v1

    iget v2, p0, Lcom/google/protobuf/BinaryReader$b;->tag:I

    if-eq v1, v2, :cond_2e

    iput p1, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    return-void

    :cond_49
    iget v0, p0, Lcom/google/protobuf/BinaryReader$b;->tag:I

    invoke-static {v0}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    if-eq v0, v2, :cond_73

    if-ne v0, v1, :cond_6e

    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->readVarint32()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryReader$b;->verifyPackedFixed64Length(I)V

    iget v1, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    add-int/2addr v1, v0

    :goto_5d
    iget v0, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    if-ge v0, v1, :cond_6d

    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->readLittleEndian64_NoCheck()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5d

    :cond_6d
    return-void

    :cond_6e
    invoke-static {}, Lcom/google/protobuf/d0;->invalidWireType()Lcom/google/protobuf/d0$a;

    move-result-object p1

    throw p1

    :cond_73
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$b;->readSFixed64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_85

    return-void

    :cond_85
    iget v0, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->readVarint32()I

    move-result v1

    iget v2, p0, Lcom/google/protobuf/BinaryReader$b;->tag:I

    if-eq v1, v2, :cond_73

    iput v0, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    return-void
.end method

.method public readSInt32()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryReader$b;->requireWireType(I)V

    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->readVarint32()I

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/CodedInputStream;->decodeZigZag32(I)I

    move-result v0

    return v0
.end method

.method public readSInt32List(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/google/protobuf/IntArrayList;

    const/4 v1, 0x2

    if-eqz v0, :cond_49

    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/IntArrayList;

    iget p1, p0, Lcom/google/protobuf/BinaryReader$b;->tag:I

    invoke-static {p1}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result p1

    if-eqz p1, :cond_2e

    if-ne p1, v1, :cond_29

    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->readVarint32()I

    move-result p1

    iget v1, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    add-int/2addr v1, p1

    :goto_19
    iget p1, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    if-ge p1, v1, :cond_6e

    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->readVarint32()I

    move-result p1

    invoke-static {p1}, Lcom/google/protobuf/CodedInputStream;->decodeZigZag32(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/IntArrayList;->addInt(I)V

    goto :goto_19

    :cond_29
    invoke-static {}, Lcom/google/protobuf/d0;->invalidWireType()Lcom/google/protobuf/d0$a;

    move-result-object p1

    throw p1

    :cond_2e
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$b;->readSInt32()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/IntArrayList;->addInt(I)V

    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->isAtEnd()Z

    move-result p1

    if-eqz p1, :cond_3c

    return-void

    :cond_3c
    iget p1, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->readVarint32()I

    move-result v1

    iget v2, p0, Lcom/google/protobuf/BinaryReader$b;->tag:I

    if-eq v1, v2, :cond_2e

    iput p1, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    return-void

    :cond_49
    iget v0, p0, Lcom/google/protobuf/BinaryReader$b;->tag:I

    invoke-static {v0}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    if-eqz v0, :cond_74

    if-ne v0, v1, :cond_6f

    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->readVarint32()I

    move-result v0

    iget v1, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    add-int/2addr v1, v0

    :goto_5a
    iget v0, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    if-ge v0, v1, :cond_6e

    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->readVarint32()I

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/CodedInputStream;->decodeZigZag32(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5a

    :cond_6e
    return-void

    :cond_6f
    invoke-static {}, Lcom/google/protobuf/d0;->invalidWireType()Lcom/google/protobuf/d0$a;

    move-result-object p1

    throw p1

    :cond_74
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$b;->readSInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_86

    return-void

    :cond_86
    iget v0, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->readVarint32()I

    move-result v1

    iget v2, p0, Lcom/google/protobuf/BinaryReader$b;->tag:I

    if-eq v1, v2, :cond_74

    iput v0, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    return-void
.end method

.method public readSInt64()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryReader$b;->requireWireType(I)V

    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$b;->readVarint64()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/protobuf/CodedInputStream;->decodeZigZag64(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public readSInt64List(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/google/protobuf/LongArrayList;

    const/4 v1, 0x2

    if-eqz v0, :cond_49

    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/LongArrayList;

    iget p1, p0, Lcom/google/protobuf/BinaryReader$b;->tag:I

    invoke-static {p1}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result p1

    if-eqz p1, :cond_2e

    if-ne p1, v1, :cond_29

    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->readVarint32()I

    move-result p1

    iget v1, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    add-int/2addr v1, p1

    :goto_19
    iget p1, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    if-ge p1, v1, :cond_6e

    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$b;->readVarint64()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedInputStream;->decodeZigZag64(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/protobuf/LongArrayList;->addLong(J)V

    goto :goto_19

    :cond_29
    invoke-static {}, Lcom/google/protobuf/d0;->invalidWireType()Lcom/google/protobuf/d0$a;

    move-result-object p1

    throw p1

    :cond_2e
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$b;->readSInt64()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/LongArrayList;->addLong(J)V

    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->isAtEnd()Z

    move-result p1

    if-eqz p1, :cond_3c

    return-void

    :cond_3c
    iget p1, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->readVarint32()I

    move-result v1

    iget v2, p0, Lcom/google/protobuf/BinaryReader$b;->tag:I

    if-eq v1, v2, :cond_2e

    iput p1, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    return-void

    :cond_49
    iget v0, p0, Lcom/google/protobuf/BinaryReader$b;->tag:I

    invoke-static {v0}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    if-eqz v0, :cond_74

    if-ne v0, v1, :cond_6f

    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->readVarint32()I

    move-result v0

    iget v1, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    add-int/2addr v1, v0

    :goto_5a
    iget v0, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    if-ge v0, v1, :cond_6e

    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$b;->readVarint64()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedInputStream;->decodeZigZag64(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5a

    :cond_6e
    return-void

    :cond_6f
    invoke-static {}, Lcom/google/protobuf/d0;->invalidWireType()Lcom/google/protobuf/d0$a;

    move-result-object p1

    throw p1

    :cond_74
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$b;->readSInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_86

    return-void

    :cond_86
    iget v0, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->readVarint32()I

    move-result v1

    iget v2, p0, Lcom/google/protobuf/BinaryReader$b;->tag:I

    if-eq v1, v2, :cond_74

    iput v0, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    return-void
.end method

.method public readString()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/BinaryReader$b;->readStringInternal(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readStringInternal(Z)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryReader$b;->requireWireType(I)V

    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->readVarint32()I

    move-result v0

    if-nez v0, :cond_d

    const-string p1, ""

    return-object p1

    :cond_d
    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryReader$b;->requireBytes(I)V

    if-eqz p1, :cond_24

    iget-object p1, p0, Lcom/google/protobuf/BinaryReader$b;->buffer:[B

    iget v1, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    add-int v2, v1, v0

    invoke-static {p1, v1, v2}, Lcom/google/protobuf/c2;->isValidUtf8([BII)Z

    move-result p1

    if-eqz p1, :cond_1f

    goto :goto_24

    :cond_1f
    invoke-static {}, Lcom/google/protobuf/d0;->invalidUtf8()Lcom/google/protobuf/d0;

    move-result-object p1

    throw p1

    :cond_24
    :goto_24
    new-instance p1, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/protobuf/BinaryReader$b;->buffer:[B

    iget v2, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    sget-object v3, Lcom/google/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p1, v1, v2, v0, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iget v1, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    return-object p1
.end method

.method public readStringList(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/BinaryReader$b;->readStringListInternal(Ljava/util/List;Z)V

    return-void
.end method

.method public readStringListInternal(Ljava/util/List;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/protobuf/BinaryReader$b;->tag:I

    invoke-static {v0}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_48

    instance-of v0, p1, Lcom/google/protobuf/h0;

    if-eqz v0, :cond_2d

    if-nez p2, :cond_2d

    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/h0;

    :cond_12
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$b;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/protobuf/h0;->add(Lcom/google/protobuf/ByteString;)V

    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->isAtEnd()Z

    move-result p1

    if-eqz p1, :cond_20

    return-void

    :cond_20
    iget p1, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->readVarint32()I

    move-result p2

    iget v1, p0, Lcom/google/protobuf/BinaryReader$b;->tag:I

    if-eq p2, v1, :cond_12

    iput p1, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    return-void

    :cond_2d
    invoke-virtual {p0, p2}, Lcom/google/protobuf/BinaryReader$b;->readStringInternal(Z)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_3b

    return-void

    :cond_3b
    iget v0, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->readVarint32()I

    move-result v1

    iget v2, p0, Lcom/google/protobuf/BinaryReader$b;->tag:I

    if-eq v1, v2, :cond_2d

    iput v0, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    return-void

    :cond_48
    invoke-static {}, Lcom/google/protobuf/d0;->invalidWireType()Lcom/google/protobuf/d0$a;

    move-result-object p1

    throw p1
.end method

.method public readStringListRequireUtf8(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/BinaryReader$b;->readStringListInternal(Ljava/util/List;Z)V

    return-void
.end method

.method public readStringRequireUtf8()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/protobuf/BinaryReader$b;->readStringInternal(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readUInt32()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryReader$b;->requireWireType(I)V

    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->readVarint32()I

    move-result v0

    return v0
.end method

.method public readUInt32List(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/google/protobuf/IntArrayList;

    const/4 v1, 0x2

    if-eqz v0, :cond_45

    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/IntArrayList;

    iget p1, p0, Lcom/google/protobuf/BinaryReader$b;->tag:I

    invoke-static {p1}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result p1

    if-eqz p1, :cond_2a

    if-ne p1, v1, :cond_25

    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->readVarint32()I

    move-result p1

    iget v1, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    add-int/2addr v1, p1

    :goto_19
    iget p1, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    if-ge p1, v1, :cond_66

    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->readVarint32()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/IntArrayList;->addInt(I)V

    goto :goto_19

    :cond_25
    invoke-static {}, Lcom/google/protobuf/d0;->invalidWireType()Lcom/google/protobuf/d0$a;

    move-result-object p1

    throw p1

    :cond_2a
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$b;->readUInt32()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/IntArrayList;->addInt(I)V

    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->isAtEnd()Z

    move-result p1

    if-eqz p1, :cond_38

    return-void

    :cond_38
    iget p1, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->readVarint32()I

    move-result v1

    iget v2, p0, Lcom/google/protobuf/BinaryReader$b;->tag:I

    if-eq v1, v2, :cond_2a

    iput p1, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    return-void

    :cond_45
    iget v0, p0, Lcom/google/protobuf/BinaryReader$b;->tag:I

    invoke-static {v0}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    if-eqz v0, :cond_6c

    if-ne v0, v1, :cond_67

    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->readVarint32()I

    move-result v0

    iget v1, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    add-int/2addr v1, v0

    :goto_56
    iget v0, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    if-ge v0, v1, :cond_66

    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->readVarint32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_56

    :cond_66
    return-void

    :cond_67
    invoke-static {}, Lcom/google/protobuf/d0;->invalidWireType()Lcom/google/protobuf/d0$a;

    move-result-object p1

    throw p1

    :cond_6c
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$b;->readUInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_7e

    return-void

    :cond_7e
    iget v0, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->readVarint32()I

    move-result v1

    iget v2, p0, Lcom/google/protobuf/BinaryReader$b;->tag:I

    if-eq v1, v2, :cond_6c

    iput v0, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    return-void
.end method

.method public readUInt64()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryReader$b;->requireWireType(I)V

    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$b;->readVarint64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readUInt64List(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/google/protobuf/LongArrayList;

    const/4 v1, 0x2

    if-eqz v0, :cond_49

    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/LongArrayList;

    iget p1, p0, Lcom/google/protobuf/BinaryReader$b;->tag:I

    invoke-static {p1}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result p1

    if-eqz p1, :cond_2e

    if-ne p1, v1, :cond_29

    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->readVarint32()I

    move-result p1

    iget v1, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    add-int/2addr v1, p1

    :goto_19
    iget p1, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    if-ge p1, v1, :cond_25

    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$b;->readVarint64()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/protobuf/LongArrayList;->addLong(J)V

    goto :goto_19

    :cond_25
    invoke-direct {p0, v1}, Lcom/google/protobuf/BinaryReader$b;->requirePosition(I)V

    goto :goto_6d

    :cond_29
    invoke-static {}, Lcom/google/protobuf/d0;->invalidWireType()Lcom/google/protobuf/d0$a;

    move-result-object p1

    throw p1

    :cond_2e
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$b;->readUInt64()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/LongArrayList;->addLong(J)V

    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->isAtEnd()Z

    move-result p1

    if-eqz p1, :cond_3c

    return-void

    :cond_3c
    iget p1, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->readVarint32()I

    move-result v1

    iget v2, p0, Lcom/google/protobuf/BinaryReader$b;->tag:I

    if-eq v1, v2, :cond_2e

    iput p1, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    return-void

    :cond_49
    iget v0, p0, Lcom/google/protobuf/BinaryReader$b;->tag:I

    invoke-static {v0}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    if-eqz v0, :cond_73

    if-ne v0, v1, :cond_6e

    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->readVarint32()I

    move-result v0

    iget v1, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    add-int/2addr v1, v0

    :goto_5a
    iget v0, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    if-ge v0, v1, :cond_6a

    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$b;->readVarint64()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5a

    :cond_6a
    invoke-direct {p0, v1}, Lcom/google/protobuf/BinaryReader$b;->requirePosition(I)V

    :goto_6d
    return-void

    :cond_6e
    invoke-static {}, Lcom/google/protobuf/d0;->invalidWireType()Lcom/google/protobuf/d0$a;

    move-result-object p1

    throw p1

    :cond_73
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$b;->readUInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_85

    return-void

    :cond_85
    iget v0, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->readVarint32()I

    move-result v1

    iget v2, p0, Lcom/google/protobuf/BinaryReader$b;->tag:I

    if-eq v1, v2, :cond_73

    iput v0, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    return-void
.end method

.method public readVarint64()J
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    iget v1, p0, Lcom/google/protobuf/BinaryReader$b;->limit:I

    if-eq v1, v0, :cond_c2

    iget-object v2, p0, Lcom/google/protobuf/BinaryReader$b;->buffer:[B

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, v2, v0

    if-ltz v0, :cond_12

    iput v3, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    int-to-long v0, v0

    return-wide v0

    :cond_12
    sub-int/2addr v1, v3

    const/16 v4, 0x9

    if-ge v1, v4, :cond_1c

    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->readVarint64SlowPath()J

    move-result-wide v0

    return-wide v0

    :cond_1c
    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x7

    xor-int/2addr v0, v3

    if-gez v0, :cond_2a

    xor-int/lit8 v0, v0, -0x80

    :goto_27
    int-to-long v2, v0

    goto/16 :goto_bf

    :cond_2a
    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v0, v1

    if-ltz v0, :cond_3b

    xor-int/lit16 v0, v0, 0x3f80

    int-to-long v0, v0

    move-wide v9, v0

    move v1, v3

    move-wide v2, v9

    goto/16 :goto_bf

    :cond_3b
    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x15

    xor-int/2addr v0, v3

    if-gez v0, :cond_49

    const v2, -0x1fc080

    xor-int/2addr v0, v2

    goto :goto_27

    :cond_49
    int-to-long v3, v0

    add-int/lit8 v0, v1, 0x1

    aget-byte v1, v2, v1

    int-to-long v5, v1

    const/16 v1, 0x1c

    shl-long/2addr v5, v1

    xor-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-ltz v1, :cond_60

    const-wide/32 v1, 0xfe03f80

    :goto_5c
    xor-long v2, v3, v1

    move v1, v0

    goto :goto_bf

    :cond_60
    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v2, v0

    int-to-long v7, v0

    const/16 v0, 0x23

    shl-long/2addr v7, v0

    xor-long/2addr v3, v7

    cmp-long v0, v3, v5

    if-gez v0, :cond_75

    const-wide v5, -0x7f01fc080L

    :goto_72
    xor-long v2, v3, v5

    goto :goto_bf

    :cond_75
    add-int/lit8 v0, v1, 0x1

    aget-byte v1, v2, v1

    int-to-long v7, v1

    const/16 v1, 0x2a

    shl-long/2addr v7, v1

    xor-long/2addr v3, v7

    cmp-long v1, v3, v5

    if-ltz v1, :cond_88

    const-wide v1, 0x3f80fe03f80L

    goto :goto_5c

    :cond_88
    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v2, v0

    int-to-long v7, v0

    const/16 v0, 0x31

    shl-long/2addr v7, v0

    xor-long/2addr v3, v7

    cmp-long v0, v3, v5

    if-gez v0, :cond_9b

    const-wide v5, -0x1fc07f01fc080L

    goto :goto_72

    :cond_9b
    add-int/lit8 v0, v1, 0x1

    aget-byte v1, v2, v1

    int-to-long v7, v1

    const/16 v1, 0x38

    shl-long/2addr v7, v1

    xor-long/2addr v3, v7

    const-wide v7, 0xfe03f80fe03f80L

    xor-long/2addr v3, v7

    cmp-long v1, v3, v5

    if-gez v1, :cond_bd

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v2, v0

    int-to-long v7, v0

    cmp-long v0, v7, v5

    if-ltz v0, :cond_b8

    goto :goto_be

    :cond_b8
    invoke-static {}, Lcom/google/protobuf/d0;->malformedVarint()Lcom/google/protobuf/d0;

    move-result-object v0

    throw v0

    :cond_bd
    move v1, v0

    :goto_be
    move-wide v2, v3

    :goto_bf
    iput v1, p0, Lcom/google/protobuf/BinaryReader$b;->pos:I

    return-wide v2

    :cond_c2
    invoke-static {}, Lcom/google/protobuf/d0;->truncatedMessage()Lcom/google/protobuf/d0;

    move-result-object v0

    throw v0
.end method

.method public skipField()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->isAtEnd()Z

    move-result v0

    if-nez v0, :cond_3f

    iget v0, p0, Lcom/google/protobuf/BinaryReader$b;->tag:I

    iget v1, p0, Lcom/google/protobuf/BinaryReader$b;->endGroupTag:I

    if-ne v0, v1, :cond_d

    goto :goto_3f

    :cond_d
    invoke-static {v0}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3b

    if-eq v0, v1, :cond_35

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2d

    const/4 v2, 0x3

    if-eq v0, v2, :cond_29

    const/4 v2, 0x5

    if-ne v0, v2, :cond_24

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryReader$b;->skipBytes(I)V

    return v1

    :cond_24
    invoke-static {}, Lcom/google/protobuf/d0;->invalidWireType()Lcom/google/protobuf/d0$a;

    move-result-object v0

    throw v0

    :cond_29
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->skipGroup()V

    return v1

    :cond_2d
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->readVarint32()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryReader$b;->skipBytes(I)V

    return v1

    :cond_35
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryReader$b;->skipBytes(I)V

    return v1

    :cond_3b
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$b;->skipVarint()V

    return v1

    :cond_3f
    :goto_3f
    const/4 v0, 0x0

    return v0
.end method
