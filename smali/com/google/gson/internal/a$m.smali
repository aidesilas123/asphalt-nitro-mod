###### Class com.google.gson.internal.a.m (com.google.gson.internal.a$m)
.class Lcom/google/gson/internal/a$m;
.super Ljava/lang/Object;
.source "ConstructorConstructor.java"

# interfaces
.implements Lcom/google/gson/internal/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/gson/internal/a;->b(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/internal/e;
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
.field final synthetic a:Lcom/google/gson/c;

.field final synthetic b:Ljava/lang/reflect/Type;

.field final synthetic c:Lcom/google/gson/internal/a;


# direct methods
.method constructor <init>(Lcom/google/gson/internal/a;Lcom/google/gson/c;Ljava/lang/reflect/Type;)V
    .registers 4

    iput-object p1, p0, Lcom/google/gson/internal/a$m;->c:Lcom/google/gson/internal/a;

    iput-object p2, p0, Lcom/google/gson/internal/a$m;->a:Lcom/google/gson/c;

    iput-object p3, p0, Lcom/google/gson/internal/a$m;->b:Ljava/lang/reflect/Type;

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

    iget-object v0, p0, Lcom/google/gson/internal/a$m;->a:Lcom/google/gson/c;

    iget-object v1, p0, Lcom/google/gson/internal/a$m;->b:Ljava/lang/reflect/Type;

    invoke-interface {v0, v1}, Lcom/google/gson/c;->a(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
