###### Class com.google.gson.internal.d.c.a (com.google.gson.internal.d$c$a)
.class Lcom/google/gson/internal/d$c$a;
.super Lcom/google/gson/internal/d$d;
.source "LinkedTreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/gson/internal/d$c;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/internal/d<",
        "TK;TV;>.d<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic e:Lcom/google/gson/internal/d$c;


# direct methods
.method constructor <init>(Lcom/google/gson/internal/d$c;)V
    .registers 2

    iput-object p1, p0, Lcom/google/gson/internal/d$c$a;->e:Lcom/google/gson/internal/d$c;

    iget-object p1, p1, Lcom/google/gson/internal/d$c;->a:Lcom/google/gson/internal/d;

    invoke-direct {p0, p1}, Lcom/google/gson/internal/d$d;-><init>(Lcom/google/gson/internal/d;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/gson/internal/d$d;->b()Lcom/google/gson/internal/d$e;

    move-result-object v0

    iget-object v0, v0, Lcom/google/gson/internal/d$e;->f:Ljava/lang/Object;

    return-object v0
.end method
