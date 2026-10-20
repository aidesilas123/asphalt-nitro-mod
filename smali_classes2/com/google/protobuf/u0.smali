###### Class com.google.protobuf.u0 (com.google.protobuf.u0)
.class final Lcom/google/protobuf/u0;
.super Ljava/lang/Object;
.source "MessageSetSchema.java"

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


# instance fields
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

.field private final unknownFieldSchema:Lcom/google/protobuf/y1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/y1<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/protobuf/y1;Lcom/google/protobuf/u;Lcom/google/protobuf/q0;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/y1<",
            "**>;",
            "Lcom/google/protobuf/u<",
            "*>;",
            "Lcom/google/protobuf/q0;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/protobuf/u0;->unknownFieldSchema:Lcom/google/protobuf/y1;

    invoke-virtual {p2, p3}, Lcom/google/protobuf/u;->hasExtensions(Lcom/google/protobuf/q0;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/protobuf/u0;->hasExtensions:Z

    iput-object p2, p0, Lcom/google/protobuf/u0;->extensionSchema:Lcom/google/protobuf/u;

    iput-object p3, p0, Lcom/google/protobuf/u0;->defaultInstance:Lcom/google/protobuf/q0;

    return-void
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

    invoke-virtual {p1, p2}, Lcom/google/protobuf/y1;->getSerializedSizeAsMessageSet(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method private mergeFromHelper(Lcom/google/protobuf/y1;Lcom/google/protobuf/u;Ljava/lang/Object;Lcom/google/protobuf/j1;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .registers 15
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

    invoke-virtual {p1, p3}, Lcom/google/protobuf/y1;->getBuilderFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p2, p3}, Lcom/google/protobuf/u;->getMutableExtensions(Ljava/lang/Object;)Lcom/google/protobuf/FieldSet;

    move-result-object v8

    :goto_8
    :try_start_8
    invoke-interface {p4}, Lcom/google/protobuf/j1;->getFieldNumber()I

    move-result v0
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_27

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_15

    invoke-virtual {p1, p3, v7}, Lcom/google/protobuf/y1;->setBuilderToMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_15
    move-object v0, p0

    move-object v1, p4

    move-object v2, p5

    move-object v3, p2

    move-object v4, v8

    move-object v5, p1

    move-object v6, v7

    :try_start_1c
    invoke-direct/range {v0 .. v6}, Lcom/google/protobuf/u0;->parseMessageSetItemOrUnknownField(Lcom/google/protobuf/j1;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/u;Lcom/google/protobuf/FieldSet;Lcom/google/protobuf/y1;Ljava/lang/Object;)Z

    move-result v0
    :try_end_20
    .catchall {:try_start_1c .. :try_end_20} :catchall_27

    if-eqz v0, :cond_23

    goto :goto_8

    :cond_23
    invoke-virtual {p1, p3, v7}, Lcom/google/protobuf/y1;->setBuilderToMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :catchall_27
    move-exception p2

    invoke-virtual {p1, p3, v7}, Lcom/google/protobuf/y1;->setBuilderToMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    throw p2
.end method

.method static newSchema(Lcom/google/protobuf/y1;Lcom/google/protobuf/u;Lcom/google/protobuf/q0;)Lcom/google/protobuf/u0;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/y1<",
            "**>;",
            "Lcom/google/protobuf/u<",
            "*>;",
            "Lcom/google/protobuf/q0;",
            ")",
            "Lcom/google/protobuf/u0<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/protobuf/u0;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/protobuf/u0;-><init>(Lcom/google/protobuf/y1;Lcom/google/protobuf/u;Lcom/google/protobuf/q0;)V

    return-object v0
.end method

.method private parseMessageSetItemOrUnknownField(Lcom/google/protobuf/j1;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/u;Lcom/google/protobuf/FieldSet;Lcom/google/protobuf/y1;Ljava/lang/Object;)Z
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            "ET::",
            "Lcom/google/protobuf/FieldSet$b<",
            "TET;>;>(",
            "Lcom/google/protobuf/j1;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            "Lcom/google/protobuf/u<",
            "TET;>;",
            "Lcom/google/protobuf/FieldSet<",
            "TET;>;",
            "Lcom/google/protobuf/y1<",
            "TUT;TUB;>;TUB;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lcom/google/protobuf/j1;->getTag()I

    move-result v0

    sget v1, Lcom/google/protobuf/WireFormat;->MESSAGE_SET_ITEM_TAG:I

    const/4 v2, 0x1

    if-eq v0, v1, :cond_2a

    invoke-static {v0}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_25

    iget-object v1, p0, Lcom/google/protobuf/u0;->defaultInstance:Lcom/google/protobuf/q0;

    invoke-static {v0}, Lcom/google/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v0

    invoke-virtual {p3, p2, v1, v0}, Lcom/google/protobuf/u;->findExtensionByNumber(Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/q0;I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_20

    invoke-virtual {p3, p1, v0, p2, p4}, Lcom/google/protobuf/u;->parseLengthPrefixedMessageSetItem(Lcom/google/protobuf/j1;Ljava/lang/Object;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/FieldSet;)V

    return v2

    :cond_20
    invoke-virtual {p5, p6, p1}, Lcom/google/protobuf/y1;->mergeOneFieldFrom(Ljava/lang/Object;Lcom/google/protobuf/j1;)Z

    move-result p1

    return p1

    :cond_25
    invoke-interface {p1}, Lcom/google/protobuf/j1;->skipField()Z

    move-result p1

    return p1

    :cond_2a
    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v3, v1

    :cond_2d
    :goto_2d
    invoke-interface {p1}, Lcom/google/protobuf/j1;->getFieldNumber()I

    move-result v4

    const v5, 0x7fffffff

    if-ne v4, v5, :cond_37

    goto :goto_5f

    :cond_37
    invoke-interface {p1}, Lcom/google/protobuf/j1;->getTag()I

    move-result v4

    sget v5, Lcom/google/protobuf/WireFormat;->MESSAGE_SET_TYPE_ID_TAG:I

    if-ne v4, v5, :cond_4a

    invoke-interface {p1}, Lcom/google/protobuf/j1;->readUInt32()I

    move-result v0

    iget-object v1, p0, Lcom/google/protobuf/u0;->defaultInstance:Lcom/google/protobuf/q0;

    invoke-virtual {p3, p2, v1, v0}, Lcom/google/protobuf/u;->findExtensionByNumber(Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/q0;I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_2d

    :cond_4a
    sget v5, Lcom/google/protobuf/WireFormat;->MESSAGE_SET_MESSAGE_TAG:I

    if-ne v4, v5, :cond_59

    if-eqz v1, :cond_54

    invoke-virtual {p3, p1, v1, p2, p4}, Lcom/google/protobuf/u;->parseLengthPrefixedMessageSetItem(Lcom/google/protobuf/j1;Ljava/lang/Object;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/FieldSet;)V

    goto :goto_2d

    :cond_54
    invoke-interface {p1}, Lcom/google/protobuf/j1;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    goto :goto_2d

    :cond_59
    invoke-interface {p1}, Lcom/google/protobuf/j1;->skipField()Z

    move-result v4

    if-nez v4, :cond_2d

    :goto_5f
    invoke-interface {p1}, Lcom/google/protobuf/j1;->getTag()I

    move-result p1

    sget v4, Lcom/google/protobuf/WireFormat;->MESSAGE_SET_ITEM_END_TAG:I

    if-ne p1, v4, :cond_73

    if-eqz v3, :cond_72

    if-eqz v1, :cond_6f

    invoke-virtual {p3, v3, v1, p2, p4}, Lcom/google/protobuf/u;->parseMessageSetItem(Lcom/google/protobuf/ByteString;Ljava/lang/Object;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/FieldSet;)V

    goto :goto_72

    :cond_6f
    invoke-virtual {p5, p6, v0, v3}, Lcom/google/protobuf/y1;->addLengthDelimited(Ljava/lang/Object;ILcom/google/protobuf/ByteString;)V

    :cond_72
    :goto_72
    return v2

    :cond_73
    invoke-static {}, Lcom/google/protobuf/d0;->invalidEndTag()Lcom/google/protobuf/d0;

    move-result-object p1

    throw p1
.end method

.method private writeUnknownFieldsHelper(Lcom/google/protobuf/y1;Ljava/lang/Object;Lcom/google/protobuf/Writer;)V
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

    invoke-virtual {p1, p2, p3}, Lcom/google/protobuf/y1;->writeAsMessageSetTo(Ljava/lang/Object;Lcom/google/protobuf/Writer;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/u0;->unknownFieldSchema:Lcom/google/protobuf/y1;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/y1;->getFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/protobuf/u0;->unknownFieldSchema:Lcom/google/protobuf/y1;

    invoke-virtual {v1, p2}, Lcom/google/protobuf/y1;->getFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    const/4 p1, 0x0

    return p1

    :cond_14
    iget-boolean v0, p0, Lcom/google/protobuf/u0;->hasExtensions:Z

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/google/protobuf/u0;->extensionSchema:Lcom/google/protobuf/u;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/u;->getExtensions(Ljava/lang/Object;)Lcom/google/protobuf/FieldSet;

    move-result-object p1

    iget-object v0, p0, Lcom/google/protobuf/u0;->extensionSchema:Lcom/google/protobuf/u;

    invoke-virtual {v0, p2}, Lcom/google/protobuf/u;->getExtensions(Ljava/lang/Object;)Lcom/google/protobuf/FieldSet;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/protobuf/FieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_29
    const/4 p1, 0x1

    return p1
.end method

.method public getSerializedSize(Ljava/lang/Object;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/u0;->unknownFieldSchema:Lcom/google/protobuf/y1;

    invoke-direct {p0, v0, p1}, Lcom/google/protobuf/u0;->getUnknownFieldsSerializedSize(Lcom/google/protobuf/y1;Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    iget-boolean v1, p0, Lcom/google/protobuf/u0;->hasExtensions:Z

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/google/protobuf/u0;->extensionSchema:Lcom/google/protobuf/u;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/u;->getExtensions(Ljava/lang/Object;)Lcom/google/protobuf/FieldSet;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/FieldSet;->getMessageSetSerializedSize()I

    move-result p1

    add-int/2addr v0, p1

    :cond_17
    return v0
.end method

.method public hashCode(Ljava/lang/Object;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/u0;->unknownFieldSchema:Lcom/google/protobuf/y1;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/y1;->getFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-boolean v1, p0, Lcom/google/protobuf/u0;->hasExtensions:Z

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcom/google/protobuf/u0;->extensionSchema:Lcom/google/protobuf/u;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/u;->getExtensions(Ljava/lang/Object;)Lcom/google/protobuf/FieldSet;

    move-result-object p1

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p1}, Lcom/google/protobuf/FieldSet;->hashCode()I

    move-result p1

    add-int/2addr v0, p1

    :cond_1b
    return v0
.end method

.method public final isInitialized(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/u0;->extensionSchema:Lcom/google/protobuf/u;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/u;->getExtensions(Ljava/lang/Object;)Lcom/google/protobuf/FieldSet;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/FieldSet;->isInitialized()Z

    move-result p1

    return p1
.end method

.method public makeImmutable(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/u0;->unknownFieldSchema:Lcom/google/protobuf/y1;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/y1;->makeImmutable(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/protobuf/u0;->extensionSchema:Lcom/google/protobuf/u;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/u;->makeImmutable(Ljava/lang/Object;)V

    return-void
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

    iget-object v1, p0, Lcom/google/protobuf/u0;->unknownFieldSchema:Lcom/google/protobuf/y1;

    iget-object v2, p0, Lcom/google/protobuf/u0;->extensionSchema:Lcom/google/protobuf/u;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/u0;->mergeFromHelper(Lcom/google/protobuf/y1;Lcom/google/protobuf/u;Ljava/lang/Object;Lcom/google/protobuf/j1;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method public mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/u0;->unknownFieldSchema:Lcom/google/protobuf/y1;

    invoke-static {v0, p1, p2}, Lcom/google/protobuf/SchemaUtil;->mergeUnknownFields(Lcom/google/protobuf/y1;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/protobuf/u0;->hasExtensions:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/protobuf/u0;->extensionSchema:Lcom/google/protobuf/u;

    invoke-static {v0, p1, p2}, Lcom/google/protobuf/SchemaUtil;->mergeExtensions(Lcom/google/protobuf/u;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_e
    return-void
.end method

.method public mergeFrom(Ljava/lang/Object;[BIILcom/google/protobuf/h$b;)V
    .registers 16
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

    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/GeneratedMessageLite;

    iget-object v1, v0, Lcom/google/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-static {}, Lcom/google/protobuf/UnknownFieldSetLite;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSetLite;

    move-result-object v2

    if-ne v1, v2, :cond_11

    invoke-static {}, Lcom/google/protobuf/UnknownFieldSetLite;->newInstance()Lcom/google/protobuf/UnknownFieldSetLite;

    move-result-object v1

    iput-object v1, v0, Lcom/google/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    :cond_11
    check-cast p1, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->ensureExtensionsAreMutable()Lcom/google/protobuf/FieldSet;

    move-result-object p1

    const/4 v0, 0x0

    move-object v2, v0

    :goto_19
    if-ge p3, p4, :cond_d7

    invoke-static {p2, p3, p5}, Lcom/google/protobuf/h;->decodeVarint32([BILcom/google/protobuf/h$b;)I

    move-result v4

    iget p3, p5, Lcom/google/protobuf/h$b;->int1:I

    sget v3, Lcom/google/protobuf/WireFormat;->MESSAGE_SET_ITEM_TAG:I

    const/4 v5, 0x2

    if-eq p3, v3, :cond_6b

    invoke-static {p3}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v3

    if-ne v3, v5, :cond_66

    iget-object v2, p0, Lcom/google/protobuf/u0;->extensionSchema:Lcom/google/protobuf/u;

    iget-object v3, p5, Lcom/google/protobuf/h$b;->extensionRegistry:Lcom/google/protobuf/ExtensionRegistryLite;

    iget-object v5, p0, Lcom/google/protobuf/u0;->defaultInstance:Lcom/google/protobuf/q0;

    invoke-static {p3}, Lcom/google/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v6

    invoke-virtual {v2, v3, v5, v6}, Lcom/google/protobuf/u;->findExtensionByNumber(Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/q0;I)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/google/protobuf/GeneratedMessageLite$g;

    if-eqz v8, :cond_5b

    invoke-static {}, Lcom/google/protobuf/Protobuf;->getInstance()Lcom/google/protobuf/Protobuf;

    move-result-object p3

    invoke-virtual {v8}, Lcom/google/protobuf/GeneratedMessageLite$g;->getMessageDefaultInstance()Lcom/google/protobuf/q0;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p3, v2}, Lcom/google/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/google/protobuf/l1;

    move-result-object p3

    invoke-static {p3, p2, v4, p4, p5}, Lcom/google/protobuf/h;->decodeMessageField(Lcom/google/protobuf/l1;[BIILcom/google/protobuf/h$b;)I

    move-result p3

    iget-object v2, v8, Lcom/google/protobuf/GeneratedMessageLite$g;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$f;

    iget-object v3, p5, Lcom/google/protobuf/h$b;->object1:Ljava/lang/Object;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/FieldSet;->setField(Lcom/google/protobuf/FieldSet$b;Ljava/lang/Object;)V

    goto :goto_64

    :cond_5b
    move v2, p3

    move-object v3, p2

    move v5, p4

    move-object v6, v1

    move-object v7, p5

    invoke-static/range {v2 .. v7}, Lcom/google/protobuf/h;->decodeUnknownField(I[BIILcom/google/protobuf/UnknownFieldSetLite;Lcom/google/protobuf/h$b;)I

    move-result p3

    :goto_64
    move-object v2, v8

    goto :goto_19

    :cond_66
    invoke-static {p3, p2, v4, p4, p5}, Lcom/google/protobuf/h;->skipField(I[BIILcom/google/protobuf/h$b;)I

    move-result p3

    goto :goto_19

    :cond_6b
    const/4 p3, 0x0

    move-object v3, v0

    :goto_6d
    if-ge v4, p4, :cond_cb

    invoke-static {p2, v4, p5}, Lcom/google/protobuf/h;->decodeVarint32([BILcom/google/protobuf/h$b;)I

    move-result v4

    iget v6, p5, Lcom/google/protobuf/h$b;->int1:I

    invoke-static {v6}, Lcom/google/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v7

    invoke-static {v6}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v8

    if-eq v7, v5, :cond_ac

    const/4 v9, 0x3

    if-eq v7, v9, :cond_83

    goto :goto_c1

    :cond_83
    if-eqz v2, :cond_a1

    invoke-static {}, Lcom/google/protobuf/Protobuf;->getInstance()Lcom/google/protobuf/Protobuf;

    move-result-object v6

    invoke-virtual {v2}, Lcom/google/protobuf/GeneratedMessageLite$g;->getMessageDefaultInstance()Lcom/google/protobuf/q0;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/google/protobuf/l1;

    move-result-object v6

    invoke-static {v6, p2, v4, p4, p5}, Lcom/google/protobuf/h;->decodeMessageField(Lcom/google/protobuf/l1;[BIILcom/google/protobuf/h$b;)I

    move-result v4

    iget-object v6, v2, Lcom/google/protobuf/GeneratedMessageLite$g;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$f;

    iget-object v7, p5, Lcom/google/protobuf/h$b;->object1:Ljava/lang/Object;

    invoke-virtual {p1, v6, v7}, Lcom/google/protobuf/FieldSet;->setField(Lcom/google/protobuf/FieldSet$b;Ljava/lang/Object;)V

    goto :goto_6d

    :cond_a1
    if-ne v8, v5, :cond_c1

    invoke-static {p2, v4, p5}, Lcom/google/protobuf/h;->decodeBytes([BILcom/google/protobuf/h$b;)I

    move-result v4

    iget-object v3, p5, Lcom/google/protobuf/h$b;->object1:Ljava/lang/Object;

    check-cast v3, Lcom/google/protobuf/ByteString;

    goto :goto_6d

    :cond_ac
    if-nez v8, :cond_c1

    invoke-static {p2, v4, p5}, Lcom/google/protobuf/h;->decodeVarint32([BILcom/google/protobuf/h$b;)I

    move-result v4

    iget p3, p5, Lcom/google/protobuf/h$b;->int1:I

    iget-object v2, p0, Lcom/google/protobuf/u0;->extensionSchema:Lcom/google/protobuf/u;

    iget-object v6, p5, Lcom/google/protobuf/h$b;->extensionRegistry:Lcom/google/protobuf/ExtensionRegistryLite;

    iget-object v7, p0, Lcom/google/protobuf/u0;->defaultInstance:Lcom/google/protobuf/q0;

    invoke-virtual {v2, v6, v7, p3}, Lcom/google/protobuf/u;->findExtensionByNumber(Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/q0;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/GeneratedMessageLite$g;

    goto :goto_6d

    :cond_c1
    :goto_c1
    sget v7, Lcom/google/protobuf/WireFormat;->MESSAGE_SET_ITEM_END_TAG:I

    if-ne v6, v7, :cond_c6

    goto :goto_cb

    :cond_c6
    invoke-static {v6, p2, v4, p4, p5}, Lcom/google/protobuf/h;->skipField(I[BIILcom/google/protobuf/h$b;)I

    move-result v4

    goto :goto_6d

    :cond_cb
    :goto_cb
    if-eqz v3, :cond_d4

    invoke-static {p3, v5}, Lcom/google/protobuf/WireFormat;->makeTag(II)I

    move-result p3

    invoke-virtual {v1, p3, v3}, Lcom/google/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    :cond_d4
    move p3, v4

    goto/16 :goto_19

    :cond_d7
    if-ne p3, p4, :cond_da

    return-void

    :cond_da
    invoke-static {}, Lcom/google/protobuf/d0;->parseFailure()Lcom/google/protobuf/d0;

    move-result-object p1

    throw p1
.end method

.method public newInstance()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/u0;->defaultInstance:Lcom/google/protobuf/q0;

    instance-of v1, v0, Lcom/google/protobuf/GeneratedMessageLite;

    if-eqz v1, :cond_d

    check-cast v0, Lcom/google/protobuf/GeneratedMessageLite;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->newMutableInstance()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0

    :cond_d
    invoke-interface {v0}, Lcom/google/protobuf/q0;->newBuilderForType()Lcom/google/protobuf/q0$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/q0$a;->buildPartial()Lcom/google/protobuf/q0;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Ljava/lang/Object;Lcom/google/protobuf/Writer;)V
    .registers 8
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

    iget-object v0, p0, Lcom/google/protobuf/u0;->extensionSchema:Lcom/google/protobuf/u;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/u;->getExtensions(Ljava/lang/Object;)Lcom/google/protobuf/FieldSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/FieldSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/FieldSet$b;

    invoke-interface {v2}, Lcom/google/protobuf/FieldSet$b;->getLiteJavaType()Lcom/google/protobuf/WireFormat$JavaType;

    move-result-object v3

    sget-object v4, Lcom/google/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/google/protobuf/WireFormat$JavaType;

    if-ne v3, v4, :cond_52

    invoke-interface {v2}, Lcom/google/protobuf/FieldSet$b;->isRepeated()Z

    move-result v3

    if-nez v3, :cond_52

    invoke-interface {v2}, Lcom/google/protobuf/FieldSet$b;->isPacked()Z

    move-result v3

    if-nez v3, :cond_52

    instance-of v3, v1, Lcom/google/protobuf/f0$b;

    if-eqz v3, :cond_46

    invoke-interface {v2}, Lcom/google/protobuf/FieldSet$b;->getNumber()I

    move-result v2

    check-cast v1, Lcom/google/protobuf/f0$b;

    invoke-virtual {v1}, Lcom/google/protobuf/f0$b;->getField()Lcom/google/protobuf/f0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/LazyFieldLite;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-interface {p2, v2, v1}, Lcom/google/protobuf/Writer;->writeMessageSetItem(ILjava/lang/Object;)V

    goto :goto_a

    :cond_46
    invoke-interface {v2}, Lcom/google/protobuf/FieldSet$b;->getNumber()I

    move-result v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v2, v1}, Lcom/google/protobuf/Writer;->writeMessageSetItem(ILjava/lang/Object;)V

    goto :goto_a

    :cond_52
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Found invalid MessageSet item."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5a
    iget-object v0, p0, Lcom/google/protobuf/u0;->unknownFieldSchema:Lcom/google/protobuf/y1;

    invoke-direct {p0, v0, p1, p2}, Lcom/google/protobuf/u0;->writeUnknownFieldsHelper(Lcom/google/protobuf/y1;Ljava/lang/Object;Lcom/google/protobuf/Writer;)V

    return-void
.end method
