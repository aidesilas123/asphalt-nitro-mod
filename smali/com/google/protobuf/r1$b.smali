###### Class com.google.protobuf.r1.b (com.google.protobuf.r1$b)
.class Lcom/google/protobuf/r1$b;
.super Ljava/lang/Object;
.source "TextFormatEscaper.java"

# interfaces
.implements Lcom/google/protobuf/r1$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/protobuf/r1;->escapeBytes([B)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$input:[B


# direct methods
.method constructor <init>([B)V
    .registers 2

    iput-object p1, p0, Lcom/google/protobuf/r1$b;->val$input:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public byteAt(I)B
    .registers 3

    iget-object v0, p0, Lcom/google/protobuf/r1$b;->val$input:[B

    aget-byte p1, v0, p1

    return p1
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/r1$b;->val$input:[B

    array-length v0, v0

    return v0
.end method
