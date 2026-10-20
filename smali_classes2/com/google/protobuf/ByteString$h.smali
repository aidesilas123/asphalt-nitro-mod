###### Class com.google.protobuf.ByteString.h (com.google.protobuf.ByteString$h)
.class final Lcom/google/protobuf/ByteString$h;
.super Ljava/lang/Object;
.source "ByteString.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/ByteString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "h"
.end annotation


# instance fields
.field private final buffer:[B

.field private final output:Lcom/google/protobuf/CodedOutputStream;


# direct methods
.method private constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/google/protobuf/ByteString$h;->buffer:[B

    invoke-static {p1}, Lcom/google/protobuf/CodedOutputStream;->newInstance([B)Lcom/google/protobuf/CodedOutputStream;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/ByteString$h;->output:Lcom/google/protobuf/CodedOutputStream;

    return-void
.end method

.method synthetic constructor <init>(ILcom/google/protobuf/ByteString$a;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/protobuf/ByteString$h;-><init>(I)V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/protobuf/ByteString;
    .registers 3

    iget-object v0, p0, Lcom/google/protobuf/ByteString$h;->output:Lcom/google/protobuf/CodedOutputStream;

    invoke-virtual {v0}, Lcom/google/protobuf/CodedOutputStream;->checkNoSpaceLeft()V

    new-instance v0, Lcom/google/protobuf/ByteString$j;

    iget-object v1, p0, Lcom/google/protobuf/ByteString$h;->buffer:[B

    invoke-direct {v0, v1}, Lcom/google/protobuf/ByteString$j;-><init>([B)V

    return-object v0
.end method

.method public getCodedOutput()Lcom/google/protobuf/CodedOutputStream;
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/ByteString$h;->output:Lcom/google/protobuf/CodedOutputStream;

    return-object v0
.end method
