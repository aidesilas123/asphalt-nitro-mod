###### Class com.google.gson.internal.bind.DefaultDateTypeAdapter.b.a (com.google.gson.internal.bind.DefaultDateTypeAdapter$b$a)
.class Lcom/google/gson/internal/bind/DefaultDateTypeAdapter$b$a;
.super Lcom/google/gson/internal/bind/DefaultDateTypeAdapter$b;
.source "DefaultDateTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gson/internal/bind/DefaultDateTypeAdapter$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/internal/bind/DefaultDateTypeAdapter$b<",
        "Ljava/util/Date;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/gson/internal/bind/DefaultDateTypeAdapter$b;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method protected d(Ljava/util/Date;)Ljava/util/Date;
    .registers 2

    return-object p1
.end method
