###### Class com.google.gson.internal.a.l (com.google.gson.internal.a$l)
.class Lcom/google/gson/internal/a$l;
.super Ljava/lang/Object;
.source "ConstructorConstructor.java"

# interfaces
.implements Lcom/google/gson/internal/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/gson/internal/a;->f(Ljava/lang/Class;)Lcom/google/gson/internal/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/gson/internal/e<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/google/gson/internal/a;


# direct methods
.method constructor <init>(Lcom/google/gson/internal/a;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/google/gson/internal/a$l;->b:Lcom/google/gson/internal/a;

    iput-object p2, p0, Lcom/google/gson/internal/a$l;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    new-instance v0, Lcom/google/gson/h;

    iget-object v1, p0, Lcom/google/gson/internal/a$l;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/google/gson/h;-><init>(Ljava/lang/String;)V

    throw v0
.end method
