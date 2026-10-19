###### Class com.google.gson.j (com.google.gson.j)
.class public final Lcom/google/gson/j;
.super Lcom/google/gson/g;
.source "JsonObject.java"


# instance fields
.field private final a:Lcom/google/gson/internal/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/internal/d<",
            "Ljava/lang/String;",
            "Lcom/google/gson/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/google/gson/g;-><init>()V

    new-instance v0, Lcom/google/gson/internal/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/gson/internal/d;-><init>(Z)V

    iput-object v0, p0, Lcom/google/gson/j;->a:Lcom/google/gson/internal/d;

    return-void
.end method


# virtual methods
.method public entrySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Lcom/google/gson/g;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/gson/j;->a:Lcom/google/gson/internal/d;

    invoke-virtual {v0}, Lcom/google/gson/internal/d;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-eq p1, p0, :cond_15

    instance-of v0, p1, Lcom/google/gson/j;

    if-eqz v0, :cond_13

    check-cast p1, Lcom/google/gson/j;

    iget-object p1, p1, Lcom/google/gson/j;->a:Lcom/google/gson/internal/d;

    iget-object v0, p0, Lcom/google/gson/j;->a:Lcom/google/gson/internal/d;

    invoke-virtual {p1, v0}, Ljava/util/AbstractMap;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    goto :goto_15

    :cond_13
    const/4 p1, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 p1, 0x1

    :goto_16
    return p1
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/google/gson/j;->a:Lcom/google/gson/internal/d;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->hashCode()I

    move-result v0

    return v0
.end method

.method public n(Ljava/lang/String;Lcom/google/gson/g;)V
    .registers 4

    iget-object v0, p0, Lcom/google/gson/j;->a:Lcom/google/gson/internal/d;

    if-nez p2, :cond_6

    sget-object p2, Lcom/google/gson/i;->a:Lcom/google/gson/i;

    :cond_6
    invoke-virtual {v0, p1, p2}, Lcom/google/gson/internal/d;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
