###### Class com.google.protobuf.f0 (com.google.protobuf.f0)
.class public Lcom/google/protobuf/f0;
.super Lcom/google/protobuf/LazyFieldLite;
.source "LazyField.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/f0$c;,
        Lcom/google/protobuf/f0$b;
    }
.end annotation


# instance fields
.field private final defaultInstance:Lcom/google/protobuf/q0;


# direct methods
.method public constructor <init>(Lcom/google/protobuf/q0;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/ByteString;)V
    .registers 4

    invoke-direct {p0, p2, p3}, Lcom/google/protobuf/LazyFieldLite;-><init>(Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/ByteString;)V

    iput-object p1, p0, Lcom/google/protobuf/f0;->defaultInstance:Lcom/google/protobuf/q0;

    return-void
.end method


# virtual methods
.method public containsDefaultInstance()Z
    .registers 3

    invoke-super {p0}, Lcom/google/protobuf/LazyFieldLite;->containsDefaultInstance()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/google/protobuf/LazyFieldLite;->value:Lcom/google/protobuf/q0;

    iget-object v1, p0, Lcom/google/protobuf/f0;->defaultInstance:Lcom/google/protobuf/q0;

    if-ne v0, v1, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    invoke-virtual {p0}, Lcom/google/protobuf/f0;->getValue()Lcom/google/protobuf/q0;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getValue()Lcom/google/protobuf/q0;
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/f0;->defaultInstance:Lcom/google/protobuf/q0;

    invoke-virtual {p0, v0}, Lcom/google/protobuf/LazyFieldLite;->getValue(Lcom/google/protobuf/q0;)Lcom/google/protobuf/q0;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    invoke-virtual {p0}, Lcom/google/protobuf/f0;->getValue()Lcom/google/protobuf/q0;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/google/protobuf/f0;->getValue()Lcom/google/protobuf/q0;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
