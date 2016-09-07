.class public Landroid/support/v4/content/ContentResolverCompat;
.super Ljava/lang/Object;
.source "ContentResolverCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/content/ContentResolverCompat$ContentResolverCompatImplJB;,
        Landroid/support/v4/content/ContentResolverCompat$ContentResolverCompatImplBase;,
        Landroid/support/v4/content/ContentResolverCompat$ContentResolverCompatImpl;
    }
.end annotation


# static fields
.field private static final IMPL:Landroid/support/v4/content/ContentResolverCompat$ContentResolverCompatImpl;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 65
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 66
    .local v0, "version":I
    const/16 v1, 0x10

    if-lt v0, v1, :cond_e

    .line 67
    new-instance v1, Landroid/support/v4/content/ContentResolverCompat$ContentResolverCompatImplJB;

    invoke-direct {v1}, Landroid/support/v4/content/ContentResolverCompat$ContentResolverCompatImplJB;-><init>()V

    sput-object v1, Landroid/support/v4/content/ContentResolverCompat;->IMPL:Landroid/support/v4/content/ContentResolverCompat$ContentResolverCompatImpl;

    .line 71
    :goto_d
    return-void

    .line 69
    :cond_e
    new-instance v1, Landroid/support/v4/content/ContentResolverCompat$ContentResolverCompatImplBase;

    invoke-direct {v1}, Landroid/support/v4/content/ContentResolverCompat$ContentResolverCompatImplBase;-><init>()V

    sput-object v1, Landroid/support/v4/content/ContentResolverCompat;->IMPL:Landroid/support/v4/content/ContentResolverCompat$ContentResolverCompatImpl;

    goto :goto_d
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    return-void
.end method

.method public static query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/support/v4/os/CancellationSignal;)Landroid/database/Cursor;
    .registers 15
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;
    .param p6, "cancellationSignal"    # Landroid/support/v4/os/CancellationSignal;

    .prologue
    .line 114
    sget-object v0, Landroid/support/v4/content/ContentResolverCompat;->IMPL:Landroid/support/v4/content/ContentResolverCompat$ContentResolverCompatImpl;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-interface/range {v0 .. v7}, Landroid/support/v4/content/ContentResolverCompat$ContentResolverCompatImpl;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/support/v4/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
