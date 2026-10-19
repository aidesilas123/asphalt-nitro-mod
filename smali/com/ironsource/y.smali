###### Class com.json.y (com.ironsource.y)
.class public Lcom/ironsource/y;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/y$a;
    }
.end annotation


# static fields
.field public static final e:I = -0x1


# instance fields
.field private final a:Lcom/ironsource/y$a;

.field private final b:J

.field private final c:J

.field private final d:J


# direct methods
.method public constructor <init>(Lcom/ironsource/y$a;JJJ)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/y;->a:Lcom/ironsource/y$a;

    iput-wide p2, p0, Lcom/ironsource/y;->b:J

    iput-wide p4, p0, Lcom/ironsource/y;->c:J

    iput-wide p6, p0, Lcom/ironsource/y;->d:J

    return-void
.end method


# virtual methods
.method public a()Lcom/ironsource/y$a;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/y;->a:Lcom/ironsource/y$a;

    return-object v0
.end method

.method public b()J
    .registers 3

    iget-wide v0, p0, Lcom/ironsource/y;->d:J

    return-wide v0
.end method

.method public c()J
    .registers 3

    iget-wide v0, p0, Lcom/ironsource/y;->c:J

    return-wide v0
.end method

.method public d()J
    .registers 3

    iget-wide v0, p0, Lcom/ironsource/y;->b:J

    return-wide v0
.end method

.method public e()Z
    .registers 3

    iget-object v0, p0, Lcom/ironsource/y;->a:Lcom/ironsource/y$a;

    sget-object v1, Lcom/ironsource/y$a;->c:Lcom/ironsource/y$a;

    if-eq v0, v1, :cond_d

    sget-object v1, Lcom/ironsource/y$a;->d:Lcom/ironsource/y$a;

    if-ne v0, v1, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method public f()Z
    .registers 3

    iget-object v0, p0, Lcom/ironsource/y;->a:Lcom/ironsource/y$a;

    sget-object v1, Lcom/ironsource/y$a;->a:Lcom/ironsource/y$a;

    if-eq v0, v1, :cond_d

    sget-object v1, Lcom/ironsource/y$a;->b:Lcom/ironsource/y$a;

    if-ne v0, v1, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

###### Class com.ironsource.y.a (com.ironsource.y$a)
.class public final enum Lcom/ironsource/y$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ironsource/y$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/ironsource/y$a;

.field public static final enum b:Lcom/ironsource/y$a;

.field public static final enum c:Lcom/ironsource/y$a;

.field public static final enum d:Lcom/ironsource/y$a;

.field private static final synthetic e:[Lcom/ironsource/y$a;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    new-instance v0, Lcom/ironsource/y$a;

    const-string v1, "MANUAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ironsource/y$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/y$a;->a:Lcom/ironsource/y$a;

    new-instance v1, Lcom/ironsource/y$a;

    const-string v3, "MANUAL_WITH_AUTOMATIC_RELOAD"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/ironsource/y$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ironsource/y$a;->b:Lcom/ironsource/y$a;

    new-instance v3, Lcom/ironsource/y$a;

    const-string v5, "AUTOMATIC_LOAD_AFTER_CLOSE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/ironsource/y$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ironsource/y$a;->c:Lcom/ironsource/y$a;

    new-instance v5, Lcom/ironsource/y$a;

    const-string v7, "AUTOMATIC_LOAD_WHILE_SHOW"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/ironsource/y$a;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/ironsource/y$a;->d:Lcom/ironsource/y$a;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/ironsource/y$a;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/ironsource/y$a;->e:[Lcom/ironsource/y$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ironsource/y$a;
    .registers 2

    const-class v0, Lcom/ironsource/y$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ironsource/y$a;

    return-object p0
.end method

.method public static values()[Lcom/ironsource/y$a;
    .registers 1

    sget-object v0, Lcom/ironsource/y$a;->e:[Lcom/ironsource/y$a;

    invoke-virtual {v0}, [Lcom/ironsource/y$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ironsource/y$a;

    return-object v0
.end method
