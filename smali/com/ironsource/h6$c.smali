###### Class com.ironsource.h6.c (com.ironsource.h6$c)
.class public final enum Lcom/ironsource/h6$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/h6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ironsource/h6$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/ironsource/h6$c;

.field public static final enum b:Lcom/ironsource/h6$c;

.field public static final enum c:Lcom/ironsource/h6$c;

.field private static final synthetic d:[Lcom/ironsource/h6$c;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    new-instance v0, Lcom/ironsource/h6$c;

    const-string v1, "Web"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ironsource/h6$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/h6$c;->a:Lcom/ironsource/h6$c;

    new-instance v1, Lcom/ironsource/h6$c;

    const-string v3, "Native"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/ironsource/h6$c;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ironsource/h6$c;->b:Lcom/ironsource/h6$c;

    new-instance v3, Lcom/ironsource/h6$c;

    const-string v5, "None"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/ironsource/h6$c;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ironsource/h6$c;->c:Lcom/ironsource/h6$c;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/ironsource/h6$c;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/ironsource/h6$c;->d:[Lcom/ironsource/h6$c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ironsource/h6$c;
    .registers 2

    const-class v0, Lcom/ironsource/h6$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ironsource/h6$c;

    return-object p0
.end method

.method public static values()[Lcom/ironsource/h6$c;
    .registers 1

    sget-object v0, Lcom/ironsource/h6$c;->d:[Lcom/ironsource/h6$c;

    invoke-virtual {v0}, [Lcom/ironsource/h6$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ironsource/h6$c;

    return-object v0
.end method
