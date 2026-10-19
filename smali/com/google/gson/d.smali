###### Class com.google.gson.d (com.google.gson.d)
.class public final Lcom/google/gson/d;
.super Lcom/google/gson/g;
.source "JsonArray.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/g;",
        "Ljava/lang/Iterable<",
        "Lcom/google/gson/g;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/gson/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/gson/g;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/gson/d;->a:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-eq p1, p0, :cond_15

    instance-of v0, p1, Lcom/google/gson/d;

    if-eqz v0, :cond_13

    check-cast p1, Lcom/google/gson/d;

    iget-object p1, p1, Lcom/google/gson/d;->a:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/google/gson/d;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

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

    iget-object v0, p0, Lcom/google/gson/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->hashCode()I

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/gson/g;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/gson/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public n(Lcom/google/gson/g;)V
    .registers 3

    if-nez p1, :cond_4

    sget-object p1, Lcom/google/gson/i;->a:Lcom/google/gson/i;

    :cond_4
    iget-object v0, p0, Lcom/google/gson/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public o(Ljava/lang/Number;)V
    .registers 4

    iget-object v0, p0, Lcom/google/gson/d;->a:Ljava/util/ArrayList;

    if-nez p1, :cond_7

    sget-object p1, Lcom/google/gson/i;->a:Lcom/google/gson/i;

    goto :goto_d

    :cond_7
    new-instance v1, Lcom/google/gson/l;

    invoke-direct {v1, p1}, Lcom/google/gson/l;-><init>(Ljava/lang/Number;)V

    move-object p1, v1

    :goto_d
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public r(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/google/gson/d;->a:Ljava/util/ArrayList;

    if-nez p1, :cond_7

    sget-object p1, Lcom/google/gson/i;->a:Lcom/google/gson/i;

    goto :goto_d

    :cond_7
    new-instance v1, Lcom/google/gson/l;

    invoke-direct {v1, p1}, Lcom/google/gson/l;-><init>(Ljava/lang/String;)V

    move-object p1, v1

    :goto_d
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
