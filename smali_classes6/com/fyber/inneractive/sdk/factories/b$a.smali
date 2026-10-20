###### Class com.fyber.inneractive.sdk.factories.b.a (com.fyber.inneractive.sdk.factories.b$a)
.class public Lcom/fyber/inneractive/sdk/factories/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/factories/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static a:Lcom/fyber/inneractive/sdk/factories/b;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/fyber/inneractive/sdk/factories/b;

    invoke-direct {v0}, Lcom/fyber/inneractive/sdk/factories/b;-><init>()V

    sput-object v0, Lcom/fyber/inneractive/sdk/factories/b$a;->a:Lcom/fyber/inneractive/sdk/factories/b;

    return-void
.end method
