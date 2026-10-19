###### Class com.google.protobuf.h (com.google.protobuf.h)
.class final Lcom/google/protobuf/h;
.super Ljava/lang/Object;
.source "ArrayDecoders.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/h$b;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static decodeBoolList(I[BIILcom/google/protobuf/Internal$j;Lcom/google/protobuf/h$b;)I
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lcom/google/protobuf/Internal$j<",
            "*>;",
            "Lcom/google/protobuf/h$b;",
            ")I"
        }
    .end annotation

    check-cast p4, Lcom/google/protobuf/BooleanArrayList;

    invoke-static {p1, p2, p5}, Lcom/google/protobuf/h;->decodeVarint64([BILcom/google/protobuf/h$b;)I

    move-result p2

    iget-wide v0, p5, Lcom/google/protobuf/h$b;->long1:J

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-eqz v6, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    invoke-virtual {p4, v0}, Lcom/google/protobuf/BooleanArrayList;->addBoolean(Z)V

    :goto_16
    if-ge p2, p3, :cond_32

    invoke-static {p1, p2, p5}, Lcom/google/protobuf/h;->decodeVarint32([BILcom/google/protobuf/h$b;)I

    move-result v0

    iget v1, p5, Lcom/google/protobuf/h$b;->int1:I

    if-eq p0, v1, :cond_21

    goto :goto_32

    :cond_21
    invoke-static {p1, v0, p5}, Lcom/google/protobuf/h;->decodeVarint64([BILcom/google/protobuf/h$b;)I

    move-result p2

    iget-wide v0, p5, Lcom/google/protobuf/h$b;->long1:J

    cmp-long v6, v0, v4

    if-eqz v6, :cond_2d

    const/4 v0, 0x1

    goto :goto_2e

    :cond_2d
    const/4 v0, 0x0

    :goto_2e
    invoke-virtual {p4, v0}, Lcom/google/protobuf/BooleanArrayList;->addBoolean(Z)V

    goto :goto_16

    :cond_32
    :goto_32
    return p2
.end method

.method static decodeBytes([BILcom/google/protobuf/h$b;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/google/protobuf/h;->decodeVarint32([BILcom/google/protobuf/h$b;)I

    move-result p1

    iget v0, p2, Lcom/google/protobuf/h$b;->int1:I

    if-ltz v0, :cond_20

    array-length v1, p0

    sub-int/2addr v1, p1

    if-gt v0, v1, :cond_1b

    if-nez v0, :cond_13

    sget-object p0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object p0, p2, Lcom/google/protobuf/h$b;->object1:Ljava/lang/Object;

    return p1

    :cond_13
    invoke-static {p0, p1, v0}, Lcom/google/protobuf/ByteString;->copyFrom([BII)Lcom/google/protobuf/ByteString;

    move-result-object p0

    iput-object p0, p2, Lcom/google/protobuf/h$b;->object1:Ljava/lang/Object;

    add-int/2addr p1, v0

    return p1

    :cond_1b
    invoke-static {}, Lcom/google/protobuf/d0;->truncatedMessage()Lcom/google/protobuf/d0;

    move-result-object p0

    throw p0

    :cond_20
    invoke-static {}, Lcom/google/protobuf/d0;->negativeSize()Lcom/google/protobuf/d0;

    move-result-object p0

    throw p0
.end method

.method static decodeBytesList(I[BIILcom/google/protobuf/Internal$j;Lcom/google/protobuf/h$b;)I
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lcom/google/protobuf/Internal$j<",
            "*>;",
            "Lcom/google/protobuf/h$b;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    invoke-static {p1, p2, p5}, Lcom/google/protobuf/h;->decodeVarint32([BILcom/google/protobuf/h$b;)I

    move-result p2

    iget v0, p5, Lcom/google/protobuf/h$b;->int1:I

    if-ltz v0, :cond_53

    array-length v1, p1

    sub-int/2addr v1, p2

    if-gt v0, v1, :cond_4e

    if-nez v0, :cond_14

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    :cond_14
    invoke-static {p1, p2, v0}, Lcom/google/protobuf/ByteString;->copyFrom([BII)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1b
    add-int/2addr p2, v0

    :goto_1c
    if-ge p2, p3, :cond_4d

    invoke-static {p1, p2, p5}, Lcom/google/protobuf/h;->decodeVarint32([BILcom/google/protobuf/h$b;)I

    move-result v0

    iget v1, p5, Lcom/google/protobuf/h$b;->int1:I

    if-eq p0, v1, :cond_27

    goto :goto_4d

    :cond_27
    invoke-static {p1, v0, p5}, Lcom/google/protobuf/h;->decodeVarint32([BILcom/google/protobuf/h$b;)I

    move-result p2

    iget v0, p5, Lcom/google/protobuf/h$b;->int1:I

    if-ltz v0, :cond_48

    array-length v1, p1

    sub-int/2addr v1, p2

    if-gt v0, v1, :cond_43

    if-nez v0, :cond_3b

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    :cond_3b
    invoke-static {p1, p2, v0}, Lcom/google/protobuf/ByteString;->copyFrom([BII)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    :cond_43
    invoke-static {}, Lcom/google/protobuf/d0;->truncatedMessage()Lcom/google/protobuf/d0;

    move-result-object p0

    throw p0

    :cond_48
    invoke-static {}, Lcom/google/protobuf/d0;->negativeSize()Lcom/google/protobuf/d0;

    move-result-object p0

    throw p0

    :cond_4d
    :goto_4d
    return p2

    :cond_4e
    invoke-static {}, Lcom/google/protobuf/d0;->truncatedMessage()Lcom/google/protobuf/d0;

    move-result-object p0

    throw p0

    :cond_53
    invoke-static {}, Lcom/google/protobuf/d0;->negativeSize()Lcom/google/protobuf/d0;

    move-result-object p0

    throw p0
.end method

.method static decodeDouble([BI)D
    .registers 2

    invoke-static {p0, p1}, Lcom/google/protobuf/h;->decodeFixed64([BI)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p0

    return-wide p0
.end method

.method static decodeDoubleList(I[BIILcom/google/protobuf/Internal$j;Lcom/google/protobuf/h$b;)I
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lcom/google/protobuf/Internal$j<",
            "*>;",
            "Lcom/google/protobuf/h$b;",
            ")I"
        }
    .end annotation

    check-cast p4, Lcom/google/protobuf/DoubleArrayList;

    invoke-static {p1, p2}, Lcom/google/protobuf/h;->decodeDouble([BI)D

    move-result-wide v0

    invoke-virtual {p4, v0, v1}, Lcom/google/protobuf/DoubleArrayList;->addDouble(D)V

    add-int/lit8 p2, p2, 0x8

    :goto_b
    if-ge p2, p3, :cond_20

    invoke-static {p1, p2, p5}, Lcom/google/protobuf/h;->decodeVarint32([BILcom/google/protobuf/h$b;)I

    move-result v0

    iget v1, p5, Lcom/google/protobuf/h$b;->int1:I

    if-eq p0, v1, :cond_16

    goto :goto_20

    :cond_16
    invoke-static {p1, v0}, Lcom/google/protobuf/h;->decodeDouble([BI)D

    move-result-wide v1

    invoke-virtual {p4, v1, v2}, Lcom/google/protobuf/DoubleArrayList;->addDouble(D)V

    add-int/lit8 p2, v0, 0x8

    goto :goto_b

    :cond_20
    :goto_20
    return p2
.end method

.method static decodeExtension(I[BIILcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;Lcom/google/protobuf/GeneratedMessageLite$g;Lcom/google/protobuf/y1;Lcom/google/protobuf/h$b;)I
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage<",
            "**>;",
            "Lcom/google/protobuf/GeneratedMessageLite$g<",
            "**>;",
            "Lcom/google/protobuf/y1<",
            "Lcom/google/protobuf/UnknownFieldSetLite;",
            "Lcom/google/protobuf/UnknownFieldSetLite;",
            ">;",
            "Lcom/google/protobuf/h$b;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p4, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/google/protobuf/FieldSet;

    ushr-int/lit8 v2, p0, 0x3

    iget-object p0, p5, Lcom/google/protobuf/GeneratedMessageLite$g;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$f;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$f;->isRepeated()Z

    move-result p0

    if-eqz p0, :cond_ed

    iget-object p0, p5, Lcom/google/protobuf/GeneratedMessageLite$g;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$f;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$f;->isPacked()Z

    move-result p0

    if-eqz p0, :cond_ed

    sget-object p0, Lcom/google/protobuf/h$a;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    invoke-virtual {p5}, Lcom/google/protobuf/GeneratedMessageLite$g;->getLiteType()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p0, p0, p3

    packed-switch p0, :pswitch_data_246

    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Type cannot be packed: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p5, Lcom/google/protobuf/GeneratedMessageLite$g;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$f;

    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$f;->getLiteType()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_40
    new-instance p0, Lcom/google/protobuf/IntArrayList;

    invoke-direct {p0}, Lcom/google/protobuf/IntArrayList;-><init>()V

    invoke-static {p1, p2, p0, p7}, Lcom/google/protobuf/h;->decodePackedVarint32List([BILcom/google/protobuf/Internal$j;Lcom/google/protobuf/h$b;)I

    move-result p1

    iget-object p2, p5, Lcom/google/protobuf/GeneratedMessageLite$g;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$f;

    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$f;->getEnumType()Lcom/google/protobuf/Internal$d;

    move-result-object v4

    const/4 v5, 0x0

    move-object v1, p4

    move-object v3, p0

    move-object v6, p6

    invoke-static/range {v1 .. v6}, Lcom/google/protobuf/SchemaUtil;->filterUnknownEnumList(Ljava/lang/Object;ILjava/util/List;Lcom/google/protobuf/Internal$d;Ljava/lang/Object;Lcom/google/protobuf/y1;)Ljava/lang/Object;

    iget-object p2, p5, Lcom/google/protobuf/GeneratedMessageLite$g;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$f;

    invoke-virtual {v0, p2, p0}, Lcom/google/protobuf/FieldSet;->setField(Lcom/google/protobuf/FieldSet$b;Ljava/lang/Object;)V

    goto/16 :goto_244

    :pswitch_5d
    new-instance p0, Lcom/google/protobuf/LongArrayList;

    invoke-direct {p0}, Lcom/google/protobuf/LongArrayList;-><init>()V

    invoke-static {p1, p2, p0, p7}, Lcom/google/protobuf/h;->decodePackedSInt64List([BILcom/google/protobuf/Internal$j;Lcom/google/protobuf/h$b;)I

    move-result p1

    iget-object p2, p5, Lcom/google/protobuf/GeneratedMessageLite$g;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$f;

    invoke-virtual {v0, p2, p0}, Lcom/google/protobuf/FieldSet;->setField(Lcom/google/protobuf/FieldSet$b;Ljava/lang/Object;)V

    goto/16 :goto_244

    :pswitch_6d
    new-instance p0, Lcom/google/protobuf/IntArrayList;

    invoke-direct {p0}, Lcom/google/protobuf/IntArrayList;-><init>()V

    invoke-static {p1, p2, p0, p7}, Lcom/google/protobuf/h;->decodePackedSInt32List([BILcom/google/protobuf/Internal$j;Lcom/google/protobuf/h$b;)I

    move-result p1

    iget-object p2, p5, Lcom/google/protobuf/GeneratedMessageLite$g;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$f;

    invoke-virtual {v0, p2, p0}, Lcom/google/protobuf/FieldSet;->setField(Lcom/google/protobuf/FieldSet$b;Ljava/lang/Object;)V

    goto/16 :goto_244

    :pswitch_7d
    new-instance p0, Lcom/google/protobuf/BooleanArrayList;

    invoke-direct {p0}, Lcom/google/protobuf/BooleanArrayList;-><init>()V

    invoke-static {p1, p2, p0, p7}, Lcom/google/protobuf/h;->decodePackedBoolList([BILcom/google/protobuf/Internal$j;Lcom/google/protobuf/h$b;)I

    move-result p1

    iget-object p2, p5, Lcom/google/protobuf/GeneratedMessageLite$g;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$f;

    invoke-virtual {v0, p2, p0}, Lcom/google/protobuf/FieldSet;->setField(Lcom/google/protobuf/FieldSet$b;Ljava/lang/Object;)V

    goto/16 :goto_244

    :pswitch_8d
    new-instance p0, Lcom/google/protobuf/IntArrayList;

    invoke-direct {p0}, Lcom/google/protobuf/IntArrayList;-><init>()V

    invoke-static {p1, p2, p0, p7}, Lcom/google/protobuf/h;->decodePackedFixed32List([BILcom/google/protobuf/Internal$j;Lcom/google/protobuf/h$b;)I

    move-result p1

    iget-object p2, p5, Lcom/google/protobuf/GeneratedMessageLite$g;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$f;

    invoke-virtual {v0, p2, p0}, Lcom/google/protobuf/FieldSet;->setField(Lcom/google/protobuf/FieldSet$b;Ljava/lang/Object;)V

    goto/16 :goto_244

    :pswitch_9d
    new-instance p0, Lcom/google/protobuf/LongArrayList;

    invoke-direct {p0}, Lcom/google/protobuf/LongArrayList;-><init>()V

    invoke-static {p1, p2, p0, p7}, Lcom/google/protobuf/h;->decodePackedFixed64List([BILcom/google/protobuf/Internal$j;Lcom/google/protobuf/h$b;)I

    move-result p1

    iget-object p2, p5, Lcom/google/protobuf/GeneratedMessageLite$g;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$f;

    invoke-virtual {v0, p2, p0}, Lcom/google/protobuf/FieldSet;->setField(Lcom/google/protobuf/FieldSet$b;Ljava/lang/Object;)V

    goto/16 :goto_244

    :pswitch_ad
    new-instance p0, Lcom/google/protobuf/IntArrayList;

    invoke-direct {p0}, Lcom/google/protobuf/IntArrayList;-><init>()V

    invoke-static {p1, p2, p0, p7}, Lcom/google/protobuf/h;->decodePackedVarint32List([BILcom/google/protobuf/Internal$j;Lcom/google/protobuf/h$b;)I

    move-result p1

    iget-object p2, p5, Lcom/google/protobuf/GeneratedMessageLite$g;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$f;

    invoke-virtual {v0, p2, p0}, Lcom/google/protobuf/FieldSet;->setField(Lcom/google/protobuf/FieldSet$b;Ljava/lang/Object;)V

    goto/16 :goto_244

    :pswitch_bd
    new-instance p0, Lcom/google/protobuf/LongArrayList;

    invoke-direct {p0}, Lcom/google/protobuf/LongArrayList;-><init>()V

    invoke-static {p1, p2, p0, p7}, Lcom/google/protobuf/h;->decodePackedVarint64List([BILcom/google/protobuf/Internal$j;Lcom/google/protobuf/h$b;)I

    move-result p1

    iget-object p2, p5, Lcom/google/protobuf/GeneratedMessageLite$g;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$f;

    invoke-virtual {v0, p2, p0}, Lcom/google/protobuf/FieldSet;->setField(Lcom/google/protobuf/FieldSet$b;Ljava/lang/Object;)V

    goto/16 :goto_244

    :pswitch_cd
    new-instance p0, Lcom/google/protobuf/FloatArrayList;

    invoke-direct {p0}, Lcom/google/protobuf/FloatArrayList;-><init>()V

    invoke-static {p1, p2, p0, p7}, Lcom/google/protobuf/h;->decodePackedFloatList([BILcom/google/protobuf/Internal$j;Lcom/google/protobuf/h$b;)I

    move-result p1

    iget-object p2, p5, Lcom/google/protobuf/GeneratedMessageLite$g;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$f;

    invoke-virtual {v0, p2, p0}, Lcom/google/protobuf/FieldSet;->setField(Lcom/google/protobuf/FieldSet$b;Ljava/lang/Object;)V

    goto/16 :goto_244

    :pswitch_dd
    new-instance p0, Lcom/google/protobuf/DoubleArrayList;

    invoke-direct {p0}, Lcom/google/protobuf/DoubleArrayList;-><init>()V

    invoke-static {p1, p2, p0, p7}, Lcom/google/protobuf/h;->decodePackedDoubleList([BILcom/google/protobuf/Internal$j;Lcom/google/protobuf/h$b;)I

    move-result p1

    iget-object p2, p5, Lcom/google/protobuf/GeneratedMessageLite$g;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$f;

    invoke-virtual {v0, p2, p0}, Lcom/google/protobuf/FieldSet;->setField(Lcom/google/protobuf/FieldSet$b;Ljava/lang/Object;)V

    goto/16 :goto_244

    :cond_ed
    invoke-virtual {p5}, Lcom/google/protobuf/GeneratedMessageLite$g;->getLiteType()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object p0

    sget-object v1, Lcom/google/protobuf/WireFormat$FieldType;->ENUM:Lcom/google/protobuf/WireFormat$FieldType;

    const/4 v3, 0x0

    if-ne p0, v1, :cond_116

    invoke-static {p1, p2, p7}, Lcom/google/protobuf/h;->decodeVarint32([BILcom/google/protobuf/h$b;)I

    move-result p2

    iget-object p0, p5, Lcom/google/protobuf/GeneratedMessageLite$g;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$f;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$f;->getEnumType()Lcom/google/protobuf/Internal$d;

    move-result-object p0

    iget p1, p7, Lcom/google/protobuf/h$b;->int1:I

    invoke-interface {p0, p1}, Lcom/google/protobuf/Internal$d;->findValueByNumber(I)Lcom/google/protobuf/Internal$c;

    move-result-object p0

    if-nez p0, :cond_10e

    iget p0, p7, Lcom/google/protobuf/h$b;->int1:I

    invoke-static {p4, v2, p0, v3, p6}, Lcom/google/protobuf/SchemaUtil;->storeUnknownEnum(Ljava/lang/Object;IILjava/lang/Object;Lcom/google/protobuf/y1;)Ljava/lang/Object;

    return p2

    :cond_10e
    iget p0, p7, Lcom/google/protobuf/h$b;->int1:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto/16 :goto_232

    :cond_116
    sget-object p0, Lcom/google/protobuf/h$a;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    invoke-virtual {p5}, Lcom/google/protobuf/GeneratedMessageLite$g;->getLiteType()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result p4

    aget p0, p0, p4

    packed-switch p0, :pswitch_data_266

    goto/16 :goto_232

    :pswitch_127
    invoke-static {}, Lcom/google/protobuf/Protobuf;->getInstance()Lcom/google/protobuf/Protobuf;

    move-result-object p0

    invoke-virtual {p5}, Lcom/google/protobuf/GeneratedMessageLite$g;->getMessageDefaultInstance()Lcom/google/protobuf/q0;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p4

    invoke-virtual {p0, p4}, Lcom/google/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/google/protobuf/l1;

    move-result-object v2

    invoke-virtual {p5}, Lcom/google/protobuf/GeneratedMessageLite$g;->isRepeated()Z

    move-result p0

    if-eqz p0, :cond_149

    invoke-static {v2, p1, p2, p3, p7}, Lcom/google/protobuf/h;->decodeMessageField(Lcom/google/protobuf/l1;[BIILcom/google/protobuf/h$b;)I

    move-result p0

    iget-object p1, p5, Lcom/google/protobuf/GeneratedMessageLite$g;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$f;

    iget-object p2, p7, Lcom/google/protobuf/h$b;->object1:Ljava/lang/Object;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/FieldSet;->addRepeatedField(Lcom/google/protobuf/FieldSet$b;Ljava/lang/Object;)V

    goto :goto_163

    :cond_149
    iget-object p0, p5, Lcom/google/protobuf/GeneratedMessageLite$g;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$f;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/FieldSet;->getField(Lcom/google/protobuf/FieldSet$b;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_15a

    invoke-interface {v2}, Lcom/google/protobuf/l1;->newInstance()Ljava/lang/Object;

    move-result-object p0

    iget-object p4, p5, Lcom/google/protobuf/GeneratedMessageLite$g;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$f;

    invoke-virtual {v0, p4, p0}, Lcom/google/protobuf/FieldSet;->setField(Lcom/google/protobuf/FieldSet$b;Ljava/lang/Object;)V

    :cond_15a
    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p7

    invoke-static/range {v1 .. v6}, Lcom/google/protobuf/h;->mergeMessageField(Ljava/lang/Object;Lcom/google/protobuf/l1;[BIILcom/google/protobuf/h$b;)I

    move-result p0

    :goto_163
    return p0

    :pswitch_164
    shl-int/lit8 p0, v2, 0x3

    or-int/lit8 v6, p0, 0x4

    invoke-static {}, Lcom/google/protobuf/Protobuf;->getInstance()Lcom/google/protobuf/Protobuf;

    move-result-object p0

    invoke-virtual {p5}, Lcom/google/protobuf/GeneratedMessageLite$g;->getMessageDefaultInstance()Lcom/google/protobuf/q0;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p4

    invoke-virtual {p0, p4}, Lcom/google/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/google/protobuf/l1;

    move-result-object v2

    invoke-virtual {p5}, Lcom/google/protobuf/GeneratedMessageLite$g;->isRepeated()Z

    move-result p0

    if-eqz p0, :cond_190

    move-object v1, v2

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, v6

    move-object v6, p7

    invoke-static/range {v1 .. v6}, Lcom/google/protobuf/h;->decodeGroupField(Lcom/google/protobuf/l1;[BIIILcom/google/protobuf/h$b;)I

    move-result p0

    iget-object p1, p5, Lcom/google/protobuf/GeneratedMessageLite$g;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$f;

    iget-object p2, p7, Lcom/google/protobuf/h$b;->object1:Ljava/lang/Object;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/FieldSet;->addRepeatedField(Lcom/google/protobuf/FieldSet$b;Ljava/lang/Object;)V

    goto :goto_1aa

    :cond_190
    iget-object p0, p5, Lcom/google/protobuf/GeneratedMessageLite$g;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$f;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/FieldSet;->getField(Lcom/google/protobuf/FieldSet$b;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_1a1

    invoke-interface {v2}, Lcom/google/protobuf/l1;->newInstance()Ljava/lang/Object;

    move-result-object p0

    iget-object p4, p5, Lcom/google/protobuf/GeneratedMessageLite$g;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$f;

    invoke-virtual {v0, p4, p0}, Lcom/google/protobuf/FieldSet;->setField(Lcom/google/protobuf/FieldSet$b;Ljava/lang/Object;)V

    :cond_1a1
    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v7, p7

    invoke-static/range {v1 .. v7}, Lcom/google/protobuf/h;->mergeGroupField(Ljava/lang/Object;Lcom/google/protobuf/l1;[BIIILcom/google/protobuf/h$b;)I

    move-result p0

    :goto_1aa
    return p0

    :pswitch_1ab
    invoke-static {p1, p2, p7}, Lcom/google/protobuf/h;->decodeString([BILcom/google/protobuf/h$b;)I

    move-result p2

    iget-object v3, p7, Lcom/google/protobuf/h$b;->object1:Ljava/lang/Object;

    goto/16 :goto_232

    :pswitch_1b3
    invoke-static {p1, p2, p7}, Lcom/google/protobuf/h;->decodeBytes([BILcom/google/protobuf/h$b;)I

    move-result p2

    iget-object v3, p7, Lcom/google/protobuf/h$b;->object1:Ljava/lang/Object;

    goto/16 :goto_232

    :pswitch_1bb
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Shouldn\'t reach here."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1c3
    invoke-static {p1, p2, p7}, Lcom/google/protobuf/h;->decodeVarint64([BILcom/google/protobuf/h$b;)I

    move-result p2

    iget-wide p0, p7, Lcom/google/protobuf/h$b;->long1:J

    invoke-static {p0, p1}, Lcom/google/protobuf/CodedInputStream;->decodeZigZag64(J)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_232

    :pswitch_1d2
    invoke-static {p1, p2, p7}, Lcom/google/protobuf/h;->decodeVarint32([BILcom/google/protobuf/h$b;)I

    move-result p2

    iget p0, p7, Lcom/google/protobuf/h$b;->int1:I

    invoke-static {p0}, Lcom/google/protobuf/CodedInputStream;->decodeZigZag32(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_232

    :pswitch_1e1
    invoke-static {p1, p2, p7}, Lcom/google/protobuf/h;->decodeVarint64([BILcom/google/protobuf/h$b;)I

    move-result p2

    iget-wide p0, p7, Lcom/google/protobuf/h$b;->long1:J

    const-wide/16 p3, 0x0

    cmp-long p6, p0, p3

    if-eqz p6, :cond_1ef

    const/4 p0, 0x1

    goto :goto_1f0

    :cond_1ef
    const/4 p0, 0x0

    :goto_1f0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_232

    :pswitch_1f5
    invoke-static {p1, p2}, Lcom/google/protobuf/h;->decodeFixed32([BI)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_225

    :pswitch_1fe
    invoke-static {p1, p2}, Lcom/google/protobuf/h;->decodeFixed64([BI)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_230

    :pswitch_207
    invoke-static {p1, p2, p7}, Lcom/google/protobuf/h;->decodeVarint32([BILcom/google/protobuf/h$b;)I

    move-result p2

    iget p0, p7, Lcom/google/protobuf/h$b;->int1:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_232

    :pswitch_212
    invoke-static {p1, p2, p7}, Lcom/google/protobuf/h;->decodeVarint64([BILcom/google/protobuf/h$b;)I

    move-result p2

    iget-wide p0, p7, Lcom/google/protobuf/h$b;->long1:J

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_232

    :pswitch_21d
    invoke-static {p1, p2}, Lcom/google/protobuf/h;->decodeFloat([BI)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    :goto_225
    add-int/lit8 p2, p2, 0x4

    goto :goto_232

    :pswitch_228
    invoke-static {p1, p2}, Lcom/google/protobuf/h;->decodeDouble([BI)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    :goto_230
    add-int/lit8 p2, p2, 0x8

    :goto_232
    invoke-virtual {p5}, Lcom/google/protobuf/GeneratedMessageLite$g;->isRepeated()Z

    move-result p0

    if-eqz p0, :cond_23e

    iget-object p0, p5, Lcom/google/protobuf/GeneratedMessageLite$g;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$f;

    invoke-virtual {v0, p0, v3}, Lcom/google/protobuf/FieldSet;->addRepeatedField(Lcom/google/protobuf/FieldSet$b;Ljava/lang/Object;)V

    goto :goto_243

    :cond_23e
    iget-object p0, p5, Lcom/google/protobuf/GeneratedMessageLite$g;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$f;

    invoke-virtual {v0, p0, v3}, Lcom/google/protobuf/FieldSet;->setField(Lcom/google/protobuf/FieldSet$b;Ljava/lang/Object;)V

    :goto_243
    move p1, p2

    :goto_244
    return p1

    nop

    :pswitch_data_246
    .packed-switch 0x1
        :pswitch_dd
        :pswitch_cd
        :pswitch_bd
        :pswitch_bd
        :pswitch_ad
        :pswitch_ad
        :pswitch_9d
        :pswitch_9d
        :pswitch_8d
        :pswitch_8d
        :pswitch_7d
        :pswitch_6d
        :pswitch_5d
        :pswitch_40
    .end packed-switch

    :pswitch_data_266
    .packed-switch 0x1
        :pswitch_228
        :pswitch_21d
        :pswitch_212
        :pswitch_212
        :pswitch_207
        :pswitch_207
        :pswitch_1fe
        :pswitch_1fe
        :pswitch_1f5
        :pswitch_1f5
        :pswitch_1e1
        :pswitch_1d2
        :pswitch_1c3
        :pswitch_1bb
        :pswitch_1b3
        :pswitch_1ab
        :pswitch_164
        :pswitch_127
    .end packed-switch
.end method

.method static decodeExtensionOrUnknownField(I[BIILjava/lang/Object;Lcom/google/protobuf/q0;Lcom/google/protobuf/y1;Lcom/google/protobuf/h$b;)I
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Ljava/lang/Object;",
            "Lcom/google/protobuf/q0;",
            "Lcom/google/protobuf/y1<",
            "Lcom/google/protobuf/UnknownFieldSetLite;",
            "Lcom/google/protobuf/UnknownFieldSetLite;",
            ">;",
            "Lcom/google/protobuf/h$b;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    ushr-int/lit8 v0, p0, 0x3

    iget-object v1, p7, Lcom/google/protobuf/h$b;->extensionRegistry:Lcom/google/protobuf/ExtensionRegistryLite;

    invoke-virtual {v1, p5, v0}, Lcom/google/protobuf/ExtensionRegistryLite;->findLiteExtensionByNumber(Lcom/google/protobuf/q0;I)Lcom/google/protobuf/GeneratedMessageLite$g;

    move-result-object v5

    if-nez v5, :cond_18

    invoke-static {p4}, Lcom/google/protobuf/t0;->getMutableUnknownFields(Ljava/lang/Object;)Lcom/google/protobuf/UnknownFieldSetLite;

    move-result-object v4

    move v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p7

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/h;->decodeUnknownField(I[BIILcom/google/protobuf/UnknownFieldSetLite;Lcom/google/protobuf/h$b;)I

    move-result v0

    return v0

    :cond_18
    move-object v4, p4

    check-cast v4, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;

    invoke-virtual {v4}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->ensureExtensionsAreMutable()Lcom/google/protobuf/FieldSet;

    move v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v6, p6

    move-object v7, p7

    invoke-static/range {v0 .. v7}, Lcom/google/protobuf/h;->decodeExtension(I[BIILcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;Lcom/google/protobuf/GeneratedMessageLite$g;Lcom/google/protobuf/y1;Lcom/google/protobuf/h$b;)I

    move-result v0

    return v0
.end method

.method static decodeFixed32([BI)I
    .registers 4

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v0

    return p0
.end method

.method static decodeFixed32List(I[BIILcom/google/protobuf/Internal$j;Lcom/google/protobuf/h$b;)I
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lcom/google/protobuf/Internal$j<",
            "*>;",
            "Lcom/google/protobuf/h$b;",
            ")I"
        }
    .end annotation

    check-cast p4, Lcom/google/protobuf/IntArrayList;

    invoke-static {p1, p2}, Lcom/google/protobuf/h;->decodeFixed32([BI)I

    move-result v0

    invoke-virtual {p4, v0}, Lcom/google/protobuf/IntArrayList;->addInt(I)V

    add-int/lit8 p2, p2, 0x4

    :goto_b
    if-ge p2, p3, :cond_20

    invoke-static {p1, p2, p5}, Lcom/google/protobuf/h;->decodeVarint32([BILcom/google/protobuf/h$b;)I

    move-result v0

    iget v1, p5, Lcom/google/protobuf/h$b;->int1:I

    if-eq p0, v1, :cond_16

    goto :goto_20

    :cond_16
    invoke-static {p1, v0}, Lcom/google/protobuf/h;->decodeFixed32([BI)I

    move-result p2

    invoke-virtual {p4, p2}, Lcom/google/protobuf/IntArrayList;->addInt(I)V

    add-int/lit8 p2, v0, 0x4

    goto :goto_b

    :cond_20
    :goto_20
    return p2
.end method

.method static decodeFixed64([BI)J
    .registers 9

    aget-byte v0, p0, p1

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x2

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x3

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x4

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x5

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x28

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x6

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x30

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 p1, p1, 0x7

    aget-byte p0, p0, p1

    int-to-long p0, p0

    and-long/2addr p0, v2

    const/16 v2, 0x38

    shl-long/2addr p0, v2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method static decodeFixed64List(I[BIILcom/google/protobuf/Internal$j;Lcom/google/protobuf/h$b;)I
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lcom/google/protobuf/Internal$j<",
            "*>;",
            "Lcom/google/protobuf/h$b;",
            ")I"
        }
    .end annotation

    check-cast p4, Lcom/google/protobuf/LongArrayList;

    invoke-static {p1, p2}, Lcom/google/protobuf/h;->decodeFixed64([BI)J

    move-result-wide v0

    invoke-virtual {p4, v0, v1}, Lcom/google/protobuf/LongArrayList;->addLong(J)V

    add-int/lit8 p2, p2, 0x8

    :goto_b
    if-ge p2, p3, :cond_20

    invoke-static {p1, p2, p5}, Lcom/google/protobuf/h;->decodeVarint32([BILcom/google/protobuf/h$b;)I

    move-result v0

    iget v1, p5, Lcom/google/protobuf/h$b;->int1:I

    if-eq p0, v1, :cond_16

    goto :goto_20

    :cond_16
    invoke-static {p1, v0}, Lcom/google/protobuf/h;->decodeFixed64([BI)J

    move-result-wide v1

    invoke-virtual {p4, v1, v2}, Lcom/google/protobuf/LongArrayList;->addLong(J)V

    add-int/lit8 p2, v0, 0x8

    goto :goto_b

    :cond_20
    :goto_20
    return p2
.end method

.method static decodeFloat([BI)F
    .registers 2

    invoke-static {p0, p1}, Lcom/google/protobuf/h;->decodeFixed32([BI)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0
.end method

.method static decodeFloatList(I[BIILcom/google/protobuf/Internal$j;Lcom/google/protobuf/h$b;)I
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lcom/google/protobuf/Internal$j<",
            "*>;",
            "Lcom/google/protobuf/h$b;",
            ")I"
        }
    .end annotation

    check-cast p4, Lcom/google/protobuf/FloatArrayList;

    invoke-static {p1, p2}, Lcom/google/protobuf/h;->decodeFloat([BI)F

    move-result v0

    invoke-virtual {p4, v0}, Lcom/google/protobuf/FloatArrayList;->addFloat(F)V

    add-int/lit8 p2, p2, 0x4

    :goto_b
    if-ge p2, p3, :cond_20

    invoke-static {p1, p2, p5}, Lcom/google/protobuf/h;->decodeVarint32([BILcom/google/protobuf/h$b;)I

    move-result v0

    iget v1, p5, Lcom/google/protobuf/h$b;->int1:I

    if-eq p0, v1, :cond_16

    goto :goto_20

    :cond_16
    invoke-static {p1, v0}, Lcom/google/protobuf/h;->decodeFloat([BI)F

    move-result p2

    invoke-virtual {p4, p2}, Lcom/google/protobuf/FloatArrayList;->addFloat(F)V

    add-int/lit8 p2, v0, 0x4

    goto :goto_b

    :cond_20
    :goto_20
    return p2
.end method

.method static decodeGroupField(Lcom/google/protobuf/l1;[BIIILcom/google/protobuf/h$b;)I
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Lcom/google/protobuf/l1;->newInstance()Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/google/protobuf/h;->mergeGroupField(Ljava/lang/Object;Lcom/google/protobuf/l1;[BIIILcom/google/protobuf/h$b;)I

    move-result p1

    invoke-interface {p0, v7}, Lcom/google/protobuf/l1;->makeImmutable(Ljava/lang/Object;)V

    iput-object v7, p5, Lcom/google/protobuf/h$b;->object1:Ljava/lang/Object;

    return p1
.end method

.method static decodeGroupList(Lcom/google/protobuf/l1;I[BIILcom/google/protobuf/Internal$j;Lcom/google/protobuf/h$b;)I
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/l1;",
            "I[BII",
            "Lcom/google/protobuf/Internal$j<",
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

    and-int/lit8 v0, p1, -0x8

    or-int/lit8 v0, v0, 0x4

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, v0

    move-object v6, p6

    invoke-static/range {v1 .. v6}, Lcom/google/protobuf/h;->decodeGroupField(Lcom/google/protobuf/l1;[BIIILcom/google/protobuf/h$b;)I

    move-result p3

    iget-object v1, p6, Lcom/google/protobuf/h$b;->object1:Ljava/lang/Object;

    invoke-interface {p5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_13
    if-ge p3, p4, :cond_2d

    invoke-static {p2, p3, p6}, Lcom/google/protobuf/h;->decodeVarint32([BILcom/google/protobuf/h$b;)I

    move-result v3

    iget v1, p6, Lcom/google/protobuf/h$b;->int1:I

    if-eq p1, v1, :cond_1e

    goto :goto_2d

    :cond_1e
    move-object v1, p0

    move-object v2, p2

    move v4, p4

    move v5, v0

    move-object v6, p6

    invoke-static/range {v1 .. v6}, Lcom/google/protobuf/h;->decodeGroupField(Lcom/google/protobuf/l1;[BIIILcom/google/protobuf/h$b;)I

    move-result p3

    iget-object v1, p6, Lcom/google/protobuf/h$b;->object1:Ljava/lang/Object;

    invoke-interface {p5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_2d
    :goto_2d
    return p3
.end method

.method static decodeMessageField(Lcom/google/protobuf/l1;[BIILcom/google/protobuf/h$b;)I
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Lcom/google/protobuf/l1;->newInstance()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/h;->mergeMessageField(Ljava/lang/Object;Lcom/google/protobuf/l1;[BIILcom/google/protobuf/h$b;)I

    move-result p1

    invoke-interface {p0, v6}, Lcom/google/protobuf/l1;->makeImmutable(Ljava/lang/Object;)V

    iput-object v6, p4, Lcom/google/protobuf/h$b;->object1:Ljava/lang/Object;

    return p1
.end method

.method static decodeMessageList(Lcom/google/protobuf/l1;I[BIILcom/google/protobuf/Internal$j;Lcom/google/protobuf/h$b;)I
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/l1<",
            "*>;I[BII",
            "Lcom/google/protobuf/Internal$j<",
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

    invoke-static {p0, p2, p3, p4, p6}, Lcom/google/protobuf/h;->decodeMessageField(Lcom/google/protobuf/l1;[BIILcom/google/protobuf/h$b;)I

    move-result p3

    iget-object v0, p6, Lcom/google/protobuf/h$b;->object1:Ljava/lang/Object;

    invoke-interface {p5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_9
    if-ge p3, p4, :cond_1e

    invoke-static {p2, p3, p6}, Lcom/google/protobuf/h;->decodeVarint32([BILcom/google/protobuf/h$b;)I

    move-result v0

    iget v1, p6, Lcom/google/protobuf/h$b;->int1:I

    if-eq p1, v1, :cond_14

    goto :goto_1e

    :cond_14
    invoke-static {p0, p2, v0, p4, p6}, Lcom/google/protobuf/h;->decodeMessageField(Lcom/google/protobuf/l1;[BIILcom/google/protobuf/h$b;)I

    move-result p3

    iget-object v0, p6, Lcom/google/protobuf/h$b;->object1:Ljava/lang/Object;

    invoke-interface {p5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_1e
    :goto_1e
    return p3
.end method

.method static decodePackedBoolList([BILcom/google/protobuf/Internal$j;Lcom/google/protobuf/h$b;)I
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lcom/google/protobuf/Internal$j<",
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

    check-cast p2, Lcom/google/protobuf/BooleanArrayList;

    invoke-static {p0, p1, p3}, Lcom/google/protobuf/h;->decodeVarint32([BILcom/google/protobuf/h$b;)I

    move-result p1

    iget v0, p3, Lcom/google/protobuf/h$b;->int1:I

    add-int/2addr v0, p1

    :goto_9
    if-ge p1, v0, :cond_1e

    invoke-static {p0, p1, p3}, Lcom/google/protobuf/h;->decodeVarint64([BILcom/google/protobuf/h$b;)I

    move-result p1

    iget-wide v1, p3, Lcom/google/protobuf/h$b;->long1:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_19

    const/4 v1, 0x1

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    :goto_1a
    invoke-virtual {p2, v1}, Lcom/google/protobuf/BooleanArrayList;->addBoolean(Z)V

    goto :goto_9

    :cond_1e
    if-ne p1, v0, :cond_21

    return p1

    :cond_21
    invoke-static {}, Lcom/google/protobuf/d0;->truncatedMessage()Lcom/google/protobuf/d0;

    move-result-object p0

    throw p0
.end method

.method static decodePackedDoubleList([BILcom/google/protobuf/Internal$j;Lcom/google/protobuf/h$b;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lcom/google/protobuf/Internal$j<",
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

    check-cast p2, Lcom/google/protobuf/DoubleArrayList;

    invoke-static {p0, p1, p3}, Lcom/google/protobuf/h;->decodeVarint32([BILcom/google/protobuf/h$b;)I

    move-result p1

    iget p3, p3, Lcom/google/protobuf/h$b;->int1:I

    add-int/2addr p3, p1

    :goto_9
    if-ge p1, p3, :cond_15

    invoke-static {p0, p1}, Lcom/google/protobuf/h;->decodeDouble([BI)D

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/google/protobuf/DoubleArrayList;->addDouble(D)V

    add-int/lit8 p1, p1, 0x8

    goto :goto_9

    :cond_15
    if-ne p1, p3, :cond_18

    return p1

    :cond_18
    invoke-static {}, Lcom/google/protobuf/d0;->truncatedMessage()Lcom/google/protobuf/d0;

    move-result-object p0

    throw p0
.end method

.method static decodePackedFixed32List([BILcom/google/protobuf/Internal$j;Lcom/google/protobuf/h$b;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lcom/google/protobuf/Internal$j<",
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

    check-cast p2, Lcom/google/protobuf/IntArrayList;

    invoke-static {p0, p1, p3}, Lcom/google/protobuf/h;->decodeVarint32([BILcom/google/protobuf/h$b;)I

    move-result p1

    iget p3, p3, Lcom/google/protobuf/h$b;->int1:I

    add-int/2addr p3, p1

    :goto_9
    if-ge p1, p3, :cond_15

    invoke-static {p0, p1}, Lcom/google/protobuf/h;->decodeFixed32([BI)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/google/protobuf/IntArrayList;->addInt(I)V

    add-int/lit8 p1, p1, 0x4

    goto :goto_9

    :cond_15
    if-ne p1, p3, :cond_18

    return p1

    :cond_18
    invoke-static {}, Lcom/google/protobuf/d0;->truncatedMessage()Lcom/google/protobuf/d0;

    move-result-object p0

    throw p0
.end method

.method static decodePackedFixed64List([BILcom/google/protobuf/Internal$j;Lcom/google/protobuf/h$b;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lcom/google/protobuf/Internal$j<",
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

    check-cast p2, Lcom/google/protobuf/LongArrayList;

    invoke-static {p0, p1, p3}, Lcom/google/protobuf/h;->decodeVarint32([BILcom/google/protobuf/h$b;)I

    move-result p1

    iget p3, p3, Lcom/google/protobuf/h$b;->int1:I

    add-int/2addr p3, p1

    :goto_9
    if-ge p1, p3, :cond_15

    invoke-static {p0, p1}, Lcom/google/protobuf/h;->decodeFixed64([BI)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/google/protobuf/LongArrayList;->addLong(J)V

    add-int/lit8 p1, p1, 0x8

    goto :goto_9

    :cond_15
    if-ne p1, p3, :cond_18

    return p1

    :cond_18
    invoke-static {}, Lcom/google/protobuf/d0;->truncatedMessage()Lcom/google/protobuf/d0;

    move-result-object p0

    throw p0
.end method

.method static decodePackedFloatList([BILcom/google/protobuf/Internal$j;Lcom/google/protobuf/h$b;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lcom/google/protobuf/Internal$j<",
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

    check-cast p2, Lcom/google/protobuf/FloatArrayList;

    invoke-static {p0, p1, p3}, Lcom/google/protobuf/h;->decodeVarint32([BILcom/google/protobuf/h$b;)I

    move-result p1

    iget p3, p3, Lcom/google/protobuf/h$b;->int1:I

    add-int/2addr p3, p1

    :goto_9
    if-ge p1, p3, :cond_15

    invoke-static {p0, p1}, Lcom/google/protobuf/h;->decodeFloat([BI)F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/google/protobuf/FloatArrayList;->addFloat(F)V

    add-int/lit8 p1, p1, 0x4

    goto :goto_9

    :cond_15
    if-ne p1, p3, :cond_18

    return p1

    :cond_18
    invoke-static {}, Lcom/google/protobuf/d0;->truncatedMessage()Lcom/google/protobuf/d0;

    move-result-object p0

    throw p0
.end method

.method static decodePackedSInt32List([BILcom/google/protobuf/Internal$j;Lcom/google/protobuf/h$b;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lcom/google/protobuf/Internal$j<",
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

    check-cast p2, Lcom/google/protobuf/IntArrayList;

    invoke-static {p0, p1, p3}, Lcom/google/protobuf/h;->decodeVarint32([BILcom/google/protobuf/h$b;)I

    move-result p1

    iget v0, p3, Lcom/google/protobuf/h$b;->int1:I

    add-int/2addr v0, p1

    :goto_9
    if-ge p1, v0, :cond_19

    invoke-static {p0, p1, p3}, Lcom/google/protobuf/h;->decodeVarint32([BILcom/google/protobuf/h$b;)I

    move-result p1

    iget v1, p3, Lcom/google/protobuf/h$b;->int1:I

    invoke-static {v1}, Lcom/google/protobuf/CodedInputStream;->decodeZigZag32(I)I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/google/protobuf/IntArrayList;->addInt(I)V

    goto :goto_9

    :cond_19
    if-ne p1, v0, :cond_1c

    return p1

    :cond_1c
    invoke-static {}, Lcom/google/protobuf/d0;->truncatedMessage()Lcom/google/protobuf/d0;

    move-result-object p0

    throw p0
.end method

.method static decodePackedSInt64List([BILcom/google/protobuf/Internal$j;Lcom/google/protobuf/h$b;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lcom/google/protobuf/Internal$j<",
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

    check-cast p2, Lcom/google/protobuf/LongArrayList;

    invoke-static {p0, p1, p3}, Lcom/google/protobuf/h;->decodeVarint32([BILcom/google/protobuf/h$b;)I

    move-result p1

    iget v0, p3, Lcom/google/protobuf/h$b;->int1:I

    add-int/2addr v0, p1

    :goto_9
    if-ge p1, v0, :cond_19

    invoke-static {p0, p1, p3}, Lcom/google/protobuf/h;->decodeVarint64([BILcom/google/protobuf/h$b;)I

    move-result p1

    iget-wide v1, p3, Lcom/google/protobuf/h$b;->long1:J

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedInputStream;->decodeZigZag64(J)J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Lcom/google/protobuf/LongArrayList;->addLong(J)V

    goto :goto_9

    :cond_19
    if-ne p1, v0, :cond_1c

    return p1

    :cond_1c
    invoke-static {}, Lcom/google/protobuf/d0;->truncatedMessage()Lcom/google/protobuf/d0;

    move-result-object p0

    throw p0
.end method

.method static decodePackedVarint32List([BILcom/google/protobuf/Internal$j;Lcom/google/protobuf/h$b;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lcom/google/protobuf/Internal$j<",
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

    check-cast p2, Lcom/google/protobuf/IntArrayList;

    invoke-static {p0, p1, p3}, Lcom/google/protobuf/h;->decodeVarint32([BILcom/google/protobuf/h$b;)I

    move-result p1

    iget v0, p3, Lcom/google/protobuf/h$b;->int1:I

    add-int/2addr v0, p1

    :goto_9
    if-ge p1, v0, :cond_15

    invoke-static {p0, p1, p3}, Lcom/google/protobuf/h;->decodeVarint32([BILcom/google/protobuf/h$b;)I

    move-result p1

    iget v1, p3, Lcom/google/protobuf/h$b;->int1:I

    invoke-virtual {p2, v1}, Lcom/google/protobuf/IntArrayList;->addInt(I)V

    goto :goto_9

    :cond_15
    if-ne p1, v0, :cond_18

    return p1

    :cond_18
    invoke-static {}, Lcom/google/protobuf/d0;->truncatedMessage()Lcom/google/protobuf/d0;

    move-result-object p0

    throw p0
.end method

.method static decodePackedVarint64List([BILcom/google/protobuf/Internal$j;Lcom/google/protobuf/h$b;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lcom/google/protobuf/Internal$j<",
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

    check-cast p2, Lcom/google/protobuf/LongArrayList;

    invoke-static {p0, p1, p3}, Lcom/google/protobuf/h;->decodeVarint32([BILcom/google/protobuf/h$b;)I

    move-result p1

    iget v0, p3, Lcom/google/protobuf/h$b;->int1:I

    add-int/2addr v0, p1

    :goto_9
    if-ge p1, v0, :cond_15

    invoke-static {p0, p1, p3}, Lcom/google/protobuf/h;->decodeVarint64([BILcom/google/protobuf/h$b;)I

    move-result p1

    iget-wide v1, p3, Lcom/google/protobuf/h$b;->long1:J

    invoke-virtual {p2, v1, v2}, Lcom/google/protobuf/LongArrayList;->addLong(J)V

    goto :goto_9

    :cond_15
    if-ne p1, v0, :cond_18

    return p1

    :cond_18
    invoke-static {}, Lcom/google/protobuf/d0;->truncatedMessage()Lcom/google/protobuf/d0;

    move-result-object p0

    throw p0
.end method

.method static decodeSInt32List(I[BIILcom/google/protobuf/Internal$j;Lcom/google/protobuf/h$b;)I
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lcom/google/protobuf/Internal$j<",
            "*>;",
            "Lcom/google/protobuf/h$b;",
            ")I"
        }
    .end annotation

    check-cast p4, Lcom/google/protobuf/IntArrayList;

    invoke-static {p1, p2, p5}, Lcom/google/protobuf/h;->decodeVarint32([BILcom/google/protobuf/h$b;)I

    move-result p2

    iget v0, p5, Lcom/google/protobuf/h$b;->int1:I

    invoke-static {v0}, Lcom/google/protobuf/CodedInputStream;->decodeZigZag32(I)I

    move-result v0

    invoke-virtual {p4, v0}, Lcom/google/protobuf/IntArrayList;->addInt(I)V

    :goto_f
    if-ge p2, p3, :cond_28

    invoke-static {p1, p2, p5}, Lcom/google/protobuf/h;->decodeVarint32([BILcom/google/protobuf/h$b;)I

    move-result v0

    iget v1, p5, Lcom/google/protobuf/h$b;->int1:I

    if-eq p0, v1, :cond_1a

    goto :goto_28

    :cond_1a
    invoke-static {p1, v0, p5}, Lcom/google/protobuf/h;->decodeVarint32([BILcom/google/protobuf/h$b;)I

    move-result p2

    iget v0, p5, Lcom/google/protobuf/h$b;->int1:I

    invoke-static {v0}, Lcom/google/protobuf/CodedInputStream;->decodeZigZag32(I)I

    move-result v0

    invoke-virtual {p4, v0}, Lcom/google/protobuf/IntArrayList;->addInt(I)V

    goto :goto_f

    :cond_28
    :goto_28
    return p2
.end method

.method static decodeSInt64List(I[BIILcom/google/protobuf/Internal$j;Lcom/google/protobuf/h$b;)I
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lcom/google/protobuf/Internal$j<",
            "*>;",
            "Lcom/google/protobuf/h$b;",
            ")I"
        }
    .end annotation

    check-cast p4, Lcom/google/protobuf/LongArrayList;

    invoke-static {p1, p2, p5}, Lcom/google/protobuf/h;->decodeVarint64([BILcom/google/protobuf/h$b;)I

    move-result p2

    iget-wide v0, p5, Lcom/google/protobuf/h$b;->long1:J

    invoke-static {v0, v1}, Lcom/google/protobuf/CodedInputStream;->decodeZigZag64(J)J

    move-result-wide v0

    invoke-virtual {p4, v0, v1}, Lcom/google/protobuf/LongArrayList;->addLong(J)V

    :goto_f
    if-ge p2, p3, :cond_28

    invoke-static {p1, p2, p5}, Lcom/google/protobuf/h;->decodeVarint32([BILcom/google/protobuf/h$b;)I

    move-result v0

    iget v1, p5, Lcom/google/protobuf/h$b;->int1:I

    if-eq p0, v1, :cond_1a

    goto :goto_28

    :cond_1a
    invoke-static {p1, v0, p5}, Lcom/google/protobuf/h;->decodeVarint64([BILcom/google/protobuf/h$b;)I

    move-result p2

    iget-wide v0, p5, Lcom/google/protobuf/h$b;->long1:J

    invoke-static {v0, v1}, Lcom/google/protobuf/CodedInputStream;->decodeZigZag64(J)J

    move-result-wide v0

    invoke-virtual {p4, v0, v1}, Lcom/google/protobuf/LongArrayList;->addLong(J)V

    goto :goto_f

    :cond_28
    :goto_28
    return p2
.end method

.method static decodeString([BILcom/google/protobuf/h$b;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/google/protobuf/h;->decodeVarint32([BILcom/google/protobuf/h$b;)I

    move-result p1

    iget v0, p2, Lcom/google/protobuf/h$b;->int1:I

    if-ltz v0, :cond_1a

    if-nez v0, :cond_f

    const-string p0, ""

    iput-object p0, p2, Lcom/google/protobuf/h$b;->object1:Ljava/lang/Object;

    return p1

    :cond_f
    new-instance v1, Ljava/lang/String;

    sget-object v2, Lcom/google/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p0, p1, v0, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iput-object v1, p2, Lcom/google/protobuf/h$b;->object1:Ljava/lang/Object;

    add-int/2addr p1, v0

    return p1

    :cond_1a
    invoke-static {}, Lcom/google/protobuf/d0;->negativeSize()Lcom/google/protobuf/d0;

    move-result-object p0

    throw p0
.end method

.method static decodeStringList(I[BIILcom/google/protobuf/Internal$j;Lcom/google/protobuf/h$b;)I
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lcom/google/protobuf/Internal$j<",
            "*>;",
            "Lcom/google/protobuf/h$b;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    invoke-static {p1, p2, p5}, Lcom/google/protobuf/h;->decodeVarint32([BILcom/google/protobuf/h$b;)I

    move-result p2

    iget v0, p5, Lcom/google/protobuf/h$b;->int1:I

    if-ltz v0, :cond_45

    const-string v1, ""

    if-nez v0, :cond_10

    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    :cond_10
    new-instance v2, Ljava/lang/String;

    sget-object v3, Lcom/google/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, p1, p2, v0, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {p4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1a
    add-int/2addr p2, v0

    :goto_1b
    if-ge p2, p3, :cond_44

    invoke-static {p1, p2, p5}, Lcom/google/protobuf/h;->decodeVarint32([BILcom/google/protobuf/h$b;)I

    move-result v0

    iget v2, p5, Lcom/google/protobuf/h$b;->int1:I

    if-eq p0, v2, :cond_26

    goto :goto_44

    :cond_26
    invoke-static {p1, v0, p5}, Lcom/google/protobuf/h;->decodeVarint32([BILcom/google/protobuf/h$b;)I

    move-result p2

    iget v0, p5, Lcom/google/protobuf/h$b;->int1:I

    if-ltz v0, :cond_3f

    if-nez v0, :cond_34

    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    :cond_34
    new-instance v2, Ljava/lang/String;

    sget-object v3, Lcom/google/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, p1, p2, v0, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {p4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    :cond_3f
    invoke-static {}, Lcom/google/protobuf/d0;->negativeSize()Lcom/google/protobuf/d0;

    move-result-object p0

    throw p0

    :cond_44
    :goto_44
    return p2

    :cond_45
    invoke-static {}, Lcom/google/protobuf/d0;->negativeSize()Lcom/google/protobuf/d0;

    move-result-object p0

    throw p0
.end method

.method static decodeStringListRequireUtf8(I[BIILcom/google/protobuf/Internal$j;Lcom/google/protobuf/h$b;)I
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lcom/google/protobuf/Internal$j<",
            "*>;",
            "Lcom/google/protobuf/h$b;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    invoke-static {p1, p2, p5}, Lcom/google/protobuf/h;->decodeVarint32([BILcom/google/protobuf/h$b;)I

    move-result p2

    iget v0, p5, Lcom/google/protobuf/h$b;->int1:I

    if-ltz v0, :cond_5f

    const-string v1, ""

    if-nez v0, :cond_10

    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_23

    :cond_10
    add-int v2, p2, v0

    invoke-static {p1, p2, v2}, Lcom/google/protobuf/c2;->isValidUtf8([BII)Z

    move-result v3

    if-eqz v3, :cond_5a

    new-instance v3, Ljava/lang/String;

    sget-object v4, Lcom/google/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, p1, p2, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {p4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_22
    move p2, v2

    :goto_23
    if-ge p2, p3, :cond_59

    invoke-static {p1, p2, p5}, Lcom/google/protobuf/h;->decodeVarint32([BILcom/google/protobuf/h$b;)I

    move-result v0

    iget v2, p5, Lcom/google/protobuf/h$b;->int1:I

    if-eq p0, v2, :cond_2e

    goto :goto_59

    :cond_2e
    invoke-static {p1, v0, p5}, Lcom/google/protobuf/h;->decodeVarint32([BILcom/google/protobuf/h$b;)I

    move-result p2

    iget v0, p5, Lcom/google/protobuf/h$b;->int1:I

    if-ltz v0, :cond_54

    if-nez v0, :cond_3c

    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_23

    :cond_3c
    add-int v2, p2, v0

    invoke-static {p1, p2, v2}, Lcom/google/protobuf/c2;->isValidUtf8([BII)Z

    move-result v3

    if-eqz v3, :cond_4f

    new-instance v3, Ljava/lang/String;

    sget-object v4, Lcom/google/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, p1, p2, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {p4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_22

    :cond_4f
    invoke-static {}, Lcom/google/protobuf/d0;->invalidUtf8()Lcom/google/protobuf/d0;

    move-result-object p0

    throw p0

    :cond_54
    invoke-static {}, Lcom/google/protobuf/d0;->negativeSize()Lcom/google/protobuf/d0;

    move-result-object p0

    throw p0

    :cond_59
    :goto_59
    return p2

    :cond_5a
    invoke-static {}, Lcom/google/protobuf/d0;->invalidUtf8()Lcom/google/protobuf/d0;

    move-result-object p0

    throw p0

    :cond_5f
    invoke-static {}, Lcom/google/protobuf/d0;->negativeSize()Lcom/google/protobuf/d0;

    move-result-object p0

    throw p0
.end method

.method static decodeStringRequireUtf8([BILcom/google/protobuf/h$b;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/google/protobuf/h;->decodeVarint32([BILcom/google/protobuf/h$b;)I

    move-result p1

    iget v0, p2, Lcom/google/protobuf/h$b;->int1:I

    if-ltz v0, :cond_17

    if-nez v0, :cond_f

    const-string p0, ""

    iput-object p0, p2, Lcom/google/protobuf/h$b;->object1:Ljava/lang/Object;

    return p1

    :cond_f
    invoke-static {p0, p1, v0}, Lcom/google/protobuf/c2;->decodeUtf8([BII)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p2, Lcom/google/protobuf/h$b;->object1:Ljava/lang/Object;

    add-int/2addr p1, v0

    return p1

    :cond_17
    invoke-static {}, Lcom/google/protobuf/d0;->negativeSize()Lcom/google/protobuf/d0;

    move-result-object p0

    throw p0
.end method

.method static decodeUnknownField(I[BIILcom/google/protobuf/UnknownFieldSetLite;Lcom/google/protobuf/h$b;)I
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v0

    if-eqz v0, :cond_9e

    invoke-static {p0}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    if-eqz v0, :cond_90

    const/4 v1, 0x1

    if-eq v0, v1, :cond_82

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5b

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2b

    const/4 p3, 0x5

    if-ne v0, p3, :cond_26

    invoke-static {p1, p2}, Lcom/google/protobuf/h;->decodeFixed32([BI)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p4, p0, p1}, Lcom/google/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    add-int/lit8 p2, p2, 0x4

    return p2

    :cond_26
    invoke-static {}, Lcom/google/protobuf/d0;->invalidTag()Lcom/google/protobuf/d0;

    move-result-object p0

    throw p0

    :cond_2b
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSetLite;->newInstance()Lcom/google/protobuf/UnknownFieldSetLite;

    move-result-object v6

    and-int/lit8 v0, p0, -0x8

    or-int/lit8 v7, v0, 0x4

    const/4 v0, 0x0

    :goto_34
    if-ge p2, p3, :cond_4e

    invoke-static {p1, p2, p5}, Lcom/google/protobuf/h;->decodeVarint32([BILcom/google/protobuf/h$b;)I

    move-result v2

    iget p2, p5, Lcom/google/protobuf/h$b;->int1:I

    if-ne p2, v7, :cond_41

    move v0, p2

    move p2, v2

    goto :goto_4e

    :cond_41
    move v0, p2

    move-object v1, p1

    move v3, p3

    move-object v4, v6

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/h;->decodeUnknownField(I[BIILcom/google/protobuf/UnknownFieldSetLite;Lcom/google/protobuf/h$b;)I

    move-result v0

    move v8, v0

    move v0, p2

    move p2, v8

    goto :goto_34

    :cond_4e
    :goto_4e
    if-gt p2, p3, :cond_56

    if-ne v0, v7, :cond_56

    invoke-virtual {p4, p0, v6}, Lcom/google/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    return p2

    :cond_56
    invoke-static {}, Lcom/google/protobuf/d0;->parseFailure()Lcom/google/protobuf/d0;

    move-result-object p0

    throw p0

    :cond_5b
    invoke-static {p1, p2, p5}, Lcom/google/protobuf/h;->decodeVarint32([BILcom/google/protobuf/h$b;)I

    move-result p2

    iget p3, p5, Lcom/google/protobuf/h$b;->int1:I

    if-ltz p3, :cond_7d

    array-length p5, p1

    sub-int/2addr p5, p2

    if-gt p3, p5, :cond_78

    if-nez p3, :cond_6f

    sget-object p1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    invoke-virtual {p4, p0, p1}, Lcom/google/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    goto :goto_76

    :cond_6f
    invoke-static {p1, p2, p3}, Lcom/google/protobuf/ByteString;->copyFrom([BII)Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {p4, p0, p1}, Lcom/google/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    :goto_76
    add-int/2addr p2, p3

    return p2

    :cond_78
    invoke-static {}, Lcom/google/protobuf/d0;->truncatedMessage()Lcom/google/protobuf/d0;

    move-result-object p0

    throw p0

    :cond_7d
    invoke-static {}, Lcom/google/protobuf/d0;->negativeSize()Lcom/google/protobuf/d0;

    move-result-object p0

    throw p0

    :cond_82
    invoke-static {p1, p2}, Lcom/google/protobuf/h;->decodeFixed64([BI)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p4, p0, p1}, Lcom/google/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    add-int/lit8 p2, p2, 0x8

    return p2

    :cond_90
    invoke-static {p1, p2, p5}, Lcom/google/protobuf/h;->decodeVarint64([BILcom/google/protobuf/h$b;)I

    move-result p1

    iget-wide p2, p5, Lcom/google/protobuf/h$b;->long1:J

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p4, p0, p2}, Lcom/google/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    return p1

    :cond_9e
    invoke-static {}, Lcom/google/protobuf/d0;->invalidTag()Lcom/google/protobuf/d0;

    move-result-object p0

    throw p0
.end method

.method static decodeVarint32(I[BILcom/google/protobuf/h$b;)I
    .registers 5

    and-int/lit8 p0, p0, 0x7f

    add-int/lit8 v0, p2, 0x1

    aget-byte p2, p1, p2

    if-ltz p2, :cond_e

    shl-int/lit8 p1, p2, 0x7

    or-int/2addr p0, p1

    iput p0, p3, Lcom/google/protobuf/h$b;->int1:I

    return v0

    :cond_e
    and-int/lit8 p2, p2, 0x7f

    shl-int/lit8 p2, p2, 0x7

    or-int/2addr p0, p2

    add-int/lit8 p2, v0, 0x1

    aget-byte v0, p1, v0

    if-ltz v0, :cond_1f

    shl-int/lit8 p1, v0, 0xe

    or-int/2addr p0, p1

    iput p0, p3, Lcom/google/protobuf/h$b;->int1:I

    return p2

    :cond_1f
    and-int/lit8 v0, v0, 0x7f

    shl-int/lit8 v0, v0, 0xe

    or-int/2addr p0, v0

    add-int/lit8 v0, p2, 0x1

    aget-byte p2, p1, p2

    if-ltz p2, :cond_30

    shl-int/lit8 p1, p2, 0x15

    or-int/2addr p0, p1

    iput p0, p3, Lcom/google/protobuf/h$b;->int1:I

    return v0

    :cond_30
    and-int/lit8 p2, p2, 0x7f

    shl-int/lit8 p2, p2, 0x15

    or-int/2addr p0, p2

    add-int/lit8 p2, v0, 0x1

    aget-byte v0, p1, v0

    if-ltz v0, :cond_41

    shl-int/lit8 p1, v0, 0x1c

    or-int/2addr p0, p1

    iput p0, p3, Lcom/google/protobuf/h$b;->int1:I

    return p2

    :cond_41
    and-int/lit8 v0, v0, 0x7f

    shl-int/lit8 v0, v0, 0x1c

    or-int/2addr p0, v0

    :goto_46
    add-int/lit8 v0, p2, 0x1

    aget-byte p2, p1, p2

    if-gez p2, :cond_4e

    move p2, v0

    goto :goto_46

    :cond_4e
    iput p0, p3, Lcom/google/protobuf/h$b;->int1:I

    return v0
.end method

.method static decodeVarint32([BILcom/google/protobuf/h$b;)I
    .registers 4

    add-int/lit8 v0, p1, 0x1

    aget-byte p1, p0, p1

    if-ltz p1, :cond_9

    iput p1, p2, Lcom/google/protobuf/h$b;->int1:I

    return v0

    :cond_9
    invoke-static {p1, p0, v0, p2}, Lcom/google/protobuf/h;->decodeVarint32(I[BILcom/google/protobuf/h$b;)I

    move-result p0

    return p0
.end method

.method static decodeVarint32List(I[BIILcom/google/protobuf/Internal$j;Lcom/google/protobuf/h$b;)I
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lcom/google/protobuf/Internal$j<",
            "*>;",
            "Lcom/google/protobuf/h$b;",
            ")I"
        }
    .end annotation

    check-cast p4, Lcom/google/protobuf/IntArrayList;

    invoke-static {p1, p2, p5}, Lcom/google/protobuf/h;->decodeVarint32([BILcom/google/protobuf/h$b;)I

    move-result p2

    iget v0, p5, Lcom/google/protobuf/h$b;->int1:I

    invoke-virtual {p4, v0}, Lcom/google/protobuf/IntArrayList;->addInt(I)V

    :goto_b
    if-ge p2, p3, :cond_20

    invoke-static {p1, p2, p5}, Lcom/google/protobuf/h;->decodeVarint32([BILcom/google/protobuf/h$b;)I

    move-result v0

    iget v1, p5, Lcom/google/protobuf/h$b;->int1:I

    if-eq p0, v1, :cond_16

    goto :goto_20

    :cond_16
    invoke-static {p1, v0, p5}, Lcom/google/protobuf/h;->decodeVarint32([BILcom/google/protobuf/h$b;)I

    move-result p2

    iget v0, p5, Lcom/google/protobuf/h$b;->int1:I

    invoke-virtual {p4, v0}, Lcom/google/protobuf/IntArrayList;->addInt(I)V

    goto :goto_b

    :cond_20
    :goto_20
    return p2
.end method

.method static decodeVarint64(J[BILcom/google/protobuf/h$b;)I
    .registers 12

    const-wide/16 v0, 0x7f

    and-long/2addr p0, v0

    add-int/lit8 v0, p3, 0x1

    aget-byte p3, p2, p3

    and-int/lit8 v1, p3, 0x7f

    int-to-long v1, v1

    const/4 v3, 0x7

    shl-long/2addr v1, v3

    or-long/2addr p0, v1

    const/4 v1, 0x7

    :goto_e
    if-gez p3, :cond_1e

    add-int/lit8 p3, v0, 0x1

    aget-byte v0, p2, v0

    add-int/2addr v1, v3

    and-int/lit8 v2, v0, 0x7f

    int-to-long v4, v2

    shl-long/2addr v4, v1

    or-long/2addr p0, v4

    move v6, v0

    move v0, p3

    move p3, v6

    goto :goto_e

    :cond_1e
    iput-wide p0, p4, Lcom/google/protobuf/h$b;->long1:J

    return v0
.end method

.method static decodeVarint64([BILcom/google/protobuf/h$b;)I
    .registers 8

    add-int/lit8 v0, p1, 0x1

    aget-byte p1, p0, p1

    int-to-long v1, p1

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-ltz p1, :cond_e

    iput-wide v1, p2, Lcom/google/protobuf/h$b;->long1:J

    return v0

    :cond_e
    invoke-static {v1, v2, p0, v0, p2}, Lcom/google/protobuf/h;->decodeVarint64(J[BILcom/google/protobuf/h$b;)I

    move-result p0

    return p0
.end method

.method static decodeVarint64List(I[BIILcom/google/protobuf/Internal$j;Lcom/google/protobuf/h$b;)I
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lcom/google/protobuf/Internal$j<",
            "*>;",
            "Lcom/google/protobuf/h$b;",
            ")I"
        }
    .end annotation

    check-cast p4, Lcom/google/protobuf/LongArrayList;

    invoke-static {p1, p2, p5}, Lcom/google/protobuf/h;->decodeVarint64([BILcom/google/protobuf/h$b;)I

    move-result p2

    iget-wide v0, p5, Lcom/google/protobuf/h$b;->long1:J

    invoke-virtual {p4, v0, v1}, Lcom/google/protobuf/LongArrayList;->addLong(J)V

    :goto_b
    if-ge p2, p3, :cond_20

    invoke-static {p1, p2, p5}, Lcom/google/protobuf/h;->decodeVarint32([BILcom/google/protobuf/h$b;)I

    move-result v0

    iget v1, p5, Lcom/google/protobuf/h$b;->int1:I

    if-eq p0, v1, :cond_16

    goto :goto_20

    :cond_16
    invoke-static {p1, v0, p5}, Lcom/google/protobuf/h;->decodeVarint64([BILcom/google/protobuf/h$b;)I

    move-result p2

    iget-wide v0, p5, Lcom/google/protobuf/h$b;->long1:J

    invoke-virtual {p4, v0, v1}, Lcom/google/protobuf/LongArrayList;->addLong(J)V

    goto :goto_b

    :cond_20
    :goto_20
    return p2
.end method

.method static mergeGroupField(Ljava/lang/Object;Lcom/google/protobuf/l1;[BIIILcom/google/protobuf/h$b;)I
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/t0;

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/google/protobuf/t0;->parseProto2Message(Ljava/lang/Object;[BIIILcom/google/protobuf/h$b;)I

    move-result p1

    iput-object p0, p6, Lcom/google/protobuf/h$b;->object1:Ljava/lang/Object;

    return p1
.end method

.method static mergeMessageField(Ljava/lang/Object;Lcom/google/protobuf/l1;[BIILcom/google/protobuf/h$b;)I
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-int/lit8 v0, p3, 0x1

    aget-byte p3, p2, p3

    if-gez p3, :cond_c

    invoke-static {p3, p2, v0, p5}, Lcom/google/protobuf/h;->decodeVarint32(I[BILcom/google/protobuf/h$b;)I

    move-result v0

    iget p3, p5, Lcom/google/protobuf/h$b;->int1:I

    :cond_c
    move v3, v0

    if-ltz p3, :cond_1e

    sub-int/2addr p4, v3

    if-gt p3, p4, :cond_1e

    add-int/2addr p3, v3

    move-object v0, p1

    move-object v1, p0

    move-object v2, p2

    move v4, p3

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/google/protobuf/l1;->mergeFrom(Ljava/lang/Object;[BIILcom/google/protobuf/h$b;)V

    iput-object p0, p5, Lcom/google/protobuf/h$b;->object1:Ljava/lang/Object;

    return p3

    :cond_1e
    invoke-static {}, Lcom/google/protobuf/d0;->truncatedMessage()Lcom/google/protobuf/d0;

    move-result-object p0

    throw p0
.end method

.method static skipField(I[BIILcom/google/protobuf/h$b;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v0

    if-eqz v0, :cond_4f

    invoke-static {p0}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    if-eqz v0, :cond_4a

    const/4 v1, 0x1

    if-eq v0, v1, :cond_47

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3f

    const/4 v1, 0x3

    if-eq v0, v1, :cond_20

    const/4 p0, 0x5

    if-ne v0, p0, :cond_1b

    add-int/lit8 p2, p2, 0x4

    return p2

    :cond_1b
    invoke-static {}, Lcom/google/protobuf/d0;->invalidTag()Lcom/google/protobuf/d0;

    move-result-object p0

    throw p0

    :cond_20
    and-int/lit8 p0, p0, -0x8

    or-int/lit8 p0, p0, 0x4

    const/4 v0, 0x0

    :goto_25
    if-ge p2, p3, :cond_35

    invoke-static {p1, p2, p4}, Lcom/google/protobuf/h;->decodeVarint32([BILcom/google/protobuf/h$b;)I

    move-result p2

    iget v0, p4, Lcom/google/protobuf/h$b;->int1:I

    if-ne v0, p0, :cond_30

    goto :goto_35

    :cond_30
    invoke-static {v0, p1, p2, p3, p4}, Lcom/google/protobuf/h;->skipField(I[BIILcom/google/protobuf/h$b;)I

    move-result p2

    goto :goto_25

    :cond_35
    :goto_35
    if-gt p2, p3, :cond_3a

    if-ne v0, p0, :cond_3a

    return p2

    :cond_3a
    invoke-static {}, Lcom/google/protobuf/d0;->parseFailure()Lcom/google/protobuf/d0;

    move-result-object p0

    throw p0

    :cond_3f
    invoke-static {p1, p2, p4}, Lcom/google/protobuf/h;->decodeVarint32([BILcom/google/protobuf/h$b;)I

    move-result p0

    iget p1, p4, Lcom/google/protobuf/h$b;->int1:I

    add-int/2addr p0, p1

    return p0

    :cond_47
    add-int/lit8 p2, p2, 0x8

    return p2

    :cond_4a
    invoke-static {p1, p2, p4}, Lcom/google/protobuf/h;->decodeVarint64([BILcom/google/protobuf/h$b;)I

    move-result p0

    return p0

    :cond_4f
    invoke-static {}, Lcom/google/protobuf/d0;->invalidTag()Lcom/google/protobuf/d0;

    move-result-object p0

    throw p0
.end method

###### Class com.google.protobuf.h.a (com.google.protobuf.h$a)
.class synthetic Lcom/google/protobuf/h$a;
.super Ljava/lang/Object;
.source "ArrayDecoders.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/h;
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

    sput-object v0, Lcom/google/protobuf/h$a;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    :try_start_9
    sget-object v1, Lcom/google/protobuf/WireFormat$FieldType;->DOUBLE:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/google/protobuf/h$a;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v1, Lcom/google/protobuf/WireFormat$FieldType;->FLOAT:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lcom/google/protobuf/h$a;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v1, Lcom/google/protobuf/WireFormat$FieldType;->INT64:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Lcom/google/protobuf/h$a;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v1, Lcom/google/protobuf/WireFormat$FieldType;->UINT64:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    :try_start_33
    sget-object v0, Lcom/google/protobuf/h$a;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v1, Lcom/google/protobuf/WireFormat$FieldType;->INT32:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_3e

    :catch_3e
    :try_start_3e
    sget-object v0, Lcom/google/protobuf/h$a;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v1, Lcom/google/protobuf/WireFormat$FieldType;->UINT32:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_49

    :catch_49
    :try_start_49
    sget-object v0, Lcom/google/protobuf/h$a;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v1, Lcom/google/protobuf/WireFormat$FieldType;->FIXED64:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_54

    :catch_54
    :try_start_54
    sget-object v0, Lcom/google/protobuf/h$a;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v1, Lcom/google/protobuf/WireFormat$FieldType;->SFIXED64:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_60
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_60} :catch_60

    :catch_60
    :try_start_60
    sget-object v0, Lcom/google/protobuf/h$a;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v1, Lcom/google/protobuf/WireFormat$FieldType;->FIXED32:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_6c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_60 .. :try_end_6c} :catch_6c

    :catch_6c
    :try_start_6c
    sget-object v0, Lcom/google/protobuf/h$a;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v1, Lcom/google/protobuf/WireFormat$FieldType;->SFIXED32:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_78
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6c .. :try_end_78} :catch_78

    :catch_78
    :try_start_78
    sget-object v0, Lcom/google/protobuf/h$a;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v1, Lcom/google/protobuf/WireFormat$FieldType;->BOOL:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_84
    .catch Ljava/lang/NoSuchFieldError; {:try_start_78 .. :try_end_84} :catch_84

    :catch_84
    :try_start_84
    sget-object v0, Lcom/google/protobuf/h$a;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v1, Lcom/google/protobuf/WireFormat$FieldType;->SINT32:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_90
    .catch Ljava/lang/NoSuchFieldError; {:try_start_84 .. :try_end_90} :catch_90

    :catch_90
    :try_start_90
    sget-object v0, Lcom/google/protobuf/h$a;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v1, Lcom/google/protobuf/WireFormat$FieldType;->SINT64:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_9c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_90 .. :try_end_9c} :catch_9c

    :catch_9c
    :try_start_9c
    sget-object v0, Lcom/google/protobuf/h$a;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v1, Lcom/google/protobuf/WireFormat$FieldType;->ENUM:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_a8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9c .. :try_end_a8} :catch_a8

    :catch_a8
    :try_start_a8
    sget-object v0, Lcom/google/protobuf/h$a;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v1, Lcom/google/protobuf/WireFormat$FieldType;->BYTES:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_b4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a8 .. :try_end_b4} :catch_b4

    :catch_b4
    :try_start_b4
    sget-object v0, Lcom/google/protobuf/h$a;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v1, Lcom/google/protobuf/WireFormat$FieldType;->STRING:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_c0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b4 .. :try_end_c0} :catch_c0

    :catch_c0
    :try_start_c0
    sget-object v0, Lcom/google/protobuf/h$a;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v1, Lcom/google/protobuf/WireFormat$FieldType;->GROUP:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_cc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c0 .. :try_end_cc} :catch_cc

    :catch_cc
    :try_start_cc
    sget-object v0, Lcom/google/protobuf/h$a;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v1, Lcom/google/protobuf/WireFormat$FieldType;->MESSAGE:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_d8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_cc .. :try_end_d8} :catch_d8

    :catch_d8
    return-void
.end method

###### Class com.google.protobuf.h.b (com.google.protobuf.h$b)
.class final Lcom/google/protobuf/h$b;
.super Ljava/lang/Object;
.source "ArrayDecoders.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field public final extensionRegistry:Lcom/google/protobuf/ExtensionRegistryLite;

.field public int1:I

.field public long1:J

.field public object1:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/google/protobuf/ExtensionRegistryLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/h$b;->extensionRegistry:Lcom/google/protobuf/ExtensionRegistryLite;

    return-void
.end method

.method constructor <init>(Lcom/google/protobuf/ExtensionRegistryLite;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/protobuf/h$b;->extensionRegistry:Lcom/google/protobuf/ExtensionRegistryLite;

    return-void
.end method
