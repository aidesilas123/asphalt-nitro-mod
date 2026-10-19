###### Class com.koushikdutta.quack.WeakExactHashMap (com.koushikdutta.quack.WeakExactHashMap)
.class public Lcom/koushikdutta/quack/WeakExactHashMap;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/koushikdutta/quack/WeakExactHashMap$Entry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/koushikdutta/quack/WeakExactHashMap$Entry<",
            "TK;>;TV;>;"
        }
    .end annotation
.end field

.field private purgeThreshold:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/quack/WeakExactHashMap;->map:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput v0, p0, Lcom/koushikdutta/quack/WeakExactHashMap;->purgeThreshold:I

    return-void
.end method

.method private maybePurge()V
    .registers 3

    iget-object v0, p0, Lcom/koushikdutta/quack/WeakExactHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    iget v1, p0, Lcom/koushikdutta/quack/WeakExactHashMap;->purgeThreshold:I

    if-ge v0, v1, :cond_b

    return-void

    :cond_b
    invoke-virtual {p0}, Lcom/koushikdutta/quack/WeakExactHashMap;->purge()I

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    iget-object v0, p0, Lcom/koushikdutta/quack/WeakExactHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/koushikdutta/quack/WeakExactHashMap;->maybePurge()V

    iget-object v0, p0, Lcom/koushikdutta/quack/WeakExactHashMap;->map:Ljava/util/HashMap;

    new-instance v1, Lcom/koushikdutta/quack/WeakExactHashMap$Entry;

    invoke-direct {v1, p1}, Lcom/koushikdutta/quack/WeakExactHashMap$Entry;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public purge()I
    .registers 4

    iget-object v0, p0, Lcom/koushikdutta/quack/WeakExactHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    iget-object v1, p0, Lcom/koushikdutta/quack/WeakExactHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_10
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/koushikdutta/quack/WeakExactHashMap$Entry;

    iget-object v2, v2, Lcom/koushikdutta/quack/WeakExactHashMap$Entry;->key:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_10

    :cond_28
    iget-object v1, p0, Lcom/koushikdutta/quack/WeakExactHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    mul-int/lit8 v2, v1, 0x2

    invoke-virtual {p0, v2}, Lcom/koushikdutta/quack/WeakExactHashMap;->setPurgeThreshold(I)V

    sub-int/2addr v0, v1

    return v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/koushikdutta/quack/WeakExactHashMap;->maybePurge()V

    iget-object v0, p0, Lcom/koushikdutta/quack/WeakExactHashMap;->map:Ljava/util/HashMap;

    new-instance v1, Lcom/koushikdutta/quack/WeakExactHashMap$Entry;

    invoke-direct {v1, p1}, Lcom/koushikdutta/quack/WeakExactHashMap$Entry;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public setPurgeThreshold(I)V
    .registers 2

    iput p1, p0, Lcom/koushikdutta/quack/WeakExactHashMap;->purgeThreshold:I

    return-void
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lcom/koushikdutta/quack/WeakExactHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

###### Class com.koushikdutta.quack.WeakExactHashMap.Entry (com.koushikdutta.quack.WeakExactHashMap$Entry)
.class Lcom/koushikdutta/quack/WeakExactHashMap$Entry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/quack/WeakExactHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field hash:I

.field key:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "TK;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_13

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/koushikdutta/quack/WeakExactHashMap$Entry;->key:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    iput p1, p0, Lcom/koushikdutta/quack/WeakExactHashMap$Entry;->hash:I

    return-void

    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "key can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    check-cast p1, Lcom/koushikdutta/quack/WeakExactHashMap$Entry;

    iget-object v0, p0, Lcom/koushikdutta/quack/WeakExactHashMap$Entry;->key:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object p1, p1, Lcom/koushikdutta/quack/WeakExactHashMap$Entry;->key:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_14

    const/4 p1, 0x1

    goto :goto_15

    :cond_14
    const/4 p1, 0x0

    :goto_15
    return p1
.end method

.method public hashCode()I
    .registers 2

    iget v0, p0, Lcom/koushikdutta/quack/WeakExactHashMap$Entry;->hash:I

    return v0
.end method
