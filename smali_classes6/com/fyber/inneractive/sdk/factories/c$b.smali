###### Class com.fyber.inneractive.sdk.factories.c.b (com.fyber.inneractive.sdk.factories.c$b)
.class public Lcom/fyber/inneractive/sdk/factories/c$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/factories/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static a:Lcom/fyber/inneractive/sdk/factories/c;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/fyber/inneractive/sdk/factories/c;

    invoke-direct {v0}, Lcom/fyber/inneractive/sdk/factories/c;-><init>()V

    sput-object v0, Lcom/fyber/inneractive/sdk/factories/c$b;->a:Lcom/fyber/inneractive/sdk/factories/c;

    return-void
.end method
