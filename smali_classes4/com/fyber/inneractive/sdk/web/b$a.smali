###### Class com.fyber.inneractive.sdk.web.b.a (com.fyber.inneractive.sdk.web.b$a)
.class public Lcom/fyber/inneractive/sdk/web/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/web/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/web/b$a;->a:Ljava/lang/String;

    iput p2, p0, Lcom/fyber/inneractive/sdk/web/b$a;->b:I

    return-void
.end method
