###### Class com.fyber.inneractive.sdk.factories.a.b (com.fyber.inneractive.sdk.factories.a$b)
.class public Lcom/fyber/inneractive/sdk/factories/a$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/factories/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static a:Lcom/fyber/inneractive/sdk/factories/a;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/fyber/inneractive/sdk/factories/a;

    invoke-direct {v0}, Lcom/fyber/inneractive/sdk/factories/a;-><init>()V

    sput-object v0, Lcom/fyber/inneractive/sdk/factories/a$b;->a:Lcom/fyber/inneractive/sdk/factories/a;

    return-void
.end method
