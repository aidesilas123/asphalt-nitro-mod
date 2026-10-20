###### Class com.ironsource.w4.b (com.ironsource.w4$b)
.class Lcom/ironsource/w4$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/w4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field static volatile a:Lcom/ironsource/w4;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/ironsource/w4;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ironsource/w4;-><init>(Lcom/ironsource/w4$a;)V

    sput-object v0, Lcom/ironsource/w4$b;->a:Lcom/ironsource/w4;

    return-void
.end method
