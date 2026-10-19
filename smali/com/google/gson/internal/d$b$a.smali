###### Class com.google.gson.internal.d.b.a (com.google.gson.internal.d$b$a)
.class Lcom/google/gson/internal/d$b$a;
.super Lcom/google/gson/internal/d$d;
.source "LinkedTreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/gson/internal/d$b;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/internal/d<",
        "TK;TV;>.d<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic e:Lcom/google/gson/internal/d$b;


# direct methods
.method constructor <init>(Lcom/google/gson/internal/d$b;)V
    .registers 2

    iput-object p1, p0, Lcom/google/gson/internal/d$b$a;->e:Lcom/google/gson/internal/d$b;

    iget-object p1, p1, Lcom/google/gson/internal/d$b;->a:Lcom/google/gson/internal/d;

    invoke-direct {p0, p1}, Lcom/google/gson/internal/d$d;-><init>(Lcom/google/gson/internal/d;)V

    return-void
.end method


# virtual methods
.method public c()Ljava/util/Map$Entry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/gson/internal/d$d;->b()Lcom/google/gson/internal/d$e;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/gson/internal/d$b$a;->c()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
