###### Class com.fyber.inneractive.sdk.util.b0.c (com.fyber.inneractive.sdk.util.b0$c)
.class public Lcom/fyber/inneractive/sdk/util/b0$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fyber/inneractive/sdk/util/b0$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/util/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public a:Ljava/util/Map;

.field public b:Lcom/fyber/inneractive/sdk/util/c0;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/util/b0$c;->a:Ljava/util/Map;

    new-instance v0, Lcom/fyber/inneractive/sdk/util/c0;

    invoke-direct {v0}, Lcom/fyber/inneractive/sdk/util/c0;-><init>()V

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/util/b0$c;->b:Lcom/fyber/inneractive/sdk/util/c0;

    return-void
.end method
