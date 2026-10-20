###### Class com.ironsource.u2.d (com.ironsource.u2$d)
.class Lcom/ironsource/u2$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/u2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# static fields
.field static volatile a:Lcom/ironsource/u2;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/ironsource/u2;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ironsource/u2;-><init>(Lcom/ironsource/u2$a;)V

    sput-object v0, Lcom/ironsource/u2$d;->a:Lcom/ironsource/u2;

    return-void
.end method
