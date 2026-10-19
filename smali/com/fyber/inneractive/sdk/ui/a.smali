###### Class com.fyber.inneractive.sdk.ui.a (com.fyber.inneractive.sdk.ui.a)
.class public Lcom/fyber/inneractive/sdk/ui/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fyber/inneractive/sdk/network/w;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/fyber/inneractive/sdk/network/w<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/fyber/inneractive/sdk/ui/FyberAdIdentifier;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/ui/FyberAdIdentifier;)V
    .registers 2

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/ui/a;->a:Lcom/fyber/inneractive/sdk/ui/FyberAdIdentifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Exception;Z)V
    .registers 4

    check-cast p1, Landroid/graphics/Bitmap;

    if-nez p2, :cond_a

    if-eqz p1, :cond_a

    iget-object p2, p0, Lcom/fyber/inneractive/sdk/ui/a;->a:Lcom/fyber/inneractive/sdk/ui/FyberAdIdentifier;

    iput-object p1, p2, Lcom/fyber/inneractive/sdk/ui/FyberAdIdentifier;->h:Landroid/graphics/Bitmap;

    :cond_a
    return-void
.end method
