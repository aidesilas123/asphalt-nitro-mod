###### Class okhttp3.internal.b (okhttp3.internal.b)
.class public final synthetic Lokhttp3/internal/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lokhttp3/k$c;


# instance fields
.field public final synthetic a:Lokhttp3/k;


# direct methods
.method public synthetic constructor <init>(Lokhttp3/k;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/b;->a:Lokhttp3/k;

    return-void
.end method


# virtual methods
.method public final a(Lokhttp3/c;)Lokhttp3/k;
    .registers 3

    iget-object v0, p0, Lokhttp3/internal/b;->a:Lokhttp3/k;

    invoke-static {v0, p1}, Lokhttp3/internal/Util;->c(Lokhttp3/k;Lokhttp3/c;)Lokhttp3/k;

    move-result-object p1

    return-object p1
.end method
