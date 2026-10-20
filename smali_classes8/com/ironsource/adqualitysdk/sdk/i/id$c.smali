###### Class com.ironsource.adqualitysdk.sdk.i.id.c (com.ironsource.adqualitysdk.sdk.i.id$c)
.class final Lcom/ironsource/adqualitysdk/sdk/i/id$c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/adqualitysdk/sdk/i/id;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field final a:Landroid/content/Intent;

.field final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ironsource/adqualitysdk/sdk/i/id$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Intent;Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/ArrayList<",
            "Lcom/ironsource/adqualitysdk/sdk/i/id$b;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/id$c;->a:Landroid/content/Intent;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/id$c;->b:Ljava/util/ArrayList;

    return-void
.end method
