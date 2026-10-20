###### Class com.google.protobuf.i1 (com.google.protobuf.i1)
.class final Lcom/google/protobuf/i1;
.super Ljava/lang/Object;
.source "RawMessageInfo.java"

# interfaces
.implements Lcom/google/protobuf/o0;


# instance fields
.field private final defaultInstance:Lcom/google/protobuf/q0;

.field private final flags:I

.field private final info:Ljava/lang/String;

.field private final objects:[Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/google/protobuf/q0;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/protobuf/i1;->defaultInstance:Lcom/google/protobuf/q0;

    iput-object p2, p0, Lcom/google/protobuf/i1;->info:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/protobuf/i1;->objects:[Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const p3, 0xd800

    if-ge p1, p3, :cond_16

    iput p1, p0, Lcom/google/protobuf/i1;->flags:I

    goto :goto_30

    :cond_16
    and-int/lit16 p1, p1, 0x1fff

    const/16 v0, 0xd

    const/4 v1, 0x1

    :goto_1b
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-lt v1, p3, :cond_2b

    and-int/lit16 v1, v1, 0x1fff

    shl-int/2addr v1, v0

    or-int/2addr p1, v1

    add-int/lit8 v0, v0, 0xd

    move v1, v2

    goto :goto_1b

    :cond_2b
    shl-int p2, v1, v0

    or-int/2addr p1, p2

    iput p1, p0, Lcom/google/protobuf/i1;->flags:I

    :goto_30
    return-void
.end method


# virtual methods
.method public getDefaultInstance()Lcom/google/protobuf/q0;
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/i1;->defaultInstance:Lcom/google/protobuf/q0;

    return-object v0
.end method

.method getObjects()[Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/i1;->objects:[Ljava/lang/Object;

    return-object v0
.end method

.method getStringInfo()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/i1;->info:Ljava/lang/String;

    return-object v0
.end method

.method public getSyntax()Lcom/google/protobuf/ProtoSyntax;
    .registers 3

    iget v0, p0, Lcom/google/protobuf/i1;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    sget-object v0, Lcom/google/protobuf/ProtoSyntax;->PROTO2:Lcom/google/protobuf/ProtoSyntax;

    goto :goto_b

    :cond_9
    sget-object v0, Lcom/google/protobuf/ProtoSyntax;->PROTO3:Lcom/google/protobuf/ProtoSyntax;

    :goto_b
    return-object v0
.end method

.method public isMessageSetWireFormat()Z
    .registers 3

    iget v0, p0, Lcom/google/protobuf/i1;->flags:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method
