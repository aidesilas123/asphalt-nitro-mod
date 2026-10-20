###### Class com.fyber.inneractive.sdk.util.c0.a (com.fyber.inneractive.sdk.util.c0$a)
.class public Lcom/fyber/inneractive/sdk/util/c0$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/util/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:Ljava/lang/Object;

.field public c:Lcom/fyber/inneractive/sdk/util/c0$a;


# direct methods
.method public constructor <init>(IILjava/lang/Object;Lcom/fyber/inneractive/sdk/util/c0$a;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/fyber/inneractive/sdk/util/c0$a;->a:I

    iput-object p3, p0, Lcom/fyber/inneractive/sdk/util/c0$a;->b:Ljava/lang/Object;

    iput-object p4, p0, Lcom/fyber/inneractive/sdk/util/c0$a;->c:Lcom/fyber/inneractive/sdk/util/c0$a;

    return-void
.end method
