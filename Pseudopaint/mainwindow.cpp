#include <QtWidgets>

#include "mainwindow.h"
#include "canvas.h"


MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
{
    canvas = new Canvas;
    setCentralWidget(canvas);
    createActions();
    createMenus();
    setWindowTitle(tr("Pseudopaint"));
    resize(500, 500);
}

void MainWindow::closeEvent(QCloseEvent *event){
    if(confirmSave()){
        event->accept();
    }
    else{
        event->ignore();
    }
}

void MainWindow::open(){
    if(confirmSave()){
        QString fileName = QFileDialog::getOpenFileName(this, tr("Open File"), QDir::currentPath());
        if(!fileName.isEmpty()){
            canvas->openImage(fileName);
        }
    }
}

void MainWindow::save(){
    QAction* action = qobject_cast<QAction*>(sender());
    QByteArray fileFormat = action->data().toByteArray();
    saveFile(fileFormat);
}

void MainWindow::penColor(){
    QColor newColor = QColorDialog::getColor(canvas->penColor());
    if(newColor.isValid()){
        canvas->setPenColor(newColor);
    }
}

void MainWindow::penWidth(){
    bool ok;
    int newWidth = QInputDialog::getInt(this, tr("Canvas"), tr("Select pen width: "), canvas->penWidth(), 1, 50, 1, &ok);
    if(ok){
        canvas->setPenWidth(newWidth);
    }
}

void MainWindow::about(){
    QMessageBox::about(this, tr("About Pseudopaint"), tr("OK"));
}

void MainWindow::createActions(){
    openAct = new QAction(tr("&Open"), this);
    openAct->setShortcut(QKeySequence::Open);
    connect(openAct, SIGNAL(triggered()), this, SLOT(open()));
    foreach (QByteArray format, QImageWriter::supportedImageFormats()) {
        QString text = tr("%1...").arg(QString(format).toUpper());
        QAction *action = new QAction(text, this);
        action->setData(format);
        connect(action, SIGNAL(triggered()), this, SLOT(save()));
        saveAsAct.append(action);
    }
    printAct = new QAction(tr("&Print..."), this);
    connect(printAct, SIGNAL(triggered()), this, SLOT(print()));
    exitAct = new QAction(tr("&Exit"), this);
    exitAct->setShortcut(QKeySequence::Quit);
    connect(exitAct, SIGNAL(triggered()), this, SLOT(close()));

    penColorAct = new QAction(tr("&Pen Color..."), this);
    connect(penColorAct, SIGNAL(triggered()), this, SLOT(penColor()));
    penWidthAct = new QAction(tr("&Pen Width..."), this);
    connect(penWidthAct, SIGNAL(triggered()), this, SLOT(penWidth()));

    clearScreenAct = new QAction(tr("&Crear Screen..."), this);
    clearScreenAct->setShortcut(tr("Ctrl+L"));
    connect(clearScreenAct, SIGNAL(triggered()), canvas, SLOT(clearImage()));

    aboutAct = new QAction(tr("&About"), this);
    connect(aboutAct, SIGNAL(triggered()), SLOT(about()));

    aboutQtAct = new QAction(tr("About &Qt..."), this);
    connect(aboutQtAct, SIGNAL(triggered()), qApp, SLOT(aboutQt()));

}

void MainWindow::createMenus(){
    saveAsMenu = new QMenu(tr("&Save As"), this);
    foreach(QAction *action, saveAsAct){
        saveAsMenu->addAction(action);
    }
    fileMenu = new QMenu(tr("&File"), this);
    fileMenu->addAction(openAct);
    fileMenu->addMenu(saveAsMenu);
    fileMenu->addAction(printAct);
    fileMenu->addSeparator();
    fileMenu->addAction(exitAct);

    optionMenu = new QMenu(tr("&Option"));
    optionMenu->addAction(penColorAct);
    optionMenu->addAction(penWidthAct);
    optionMenu->addAction(clearScreenAct);

    helpMenu = new QMenu(tr("&Help"), this);
    helpMenu->addAction(aboutAct);
    helpMenu->addAction(aboutQtAct);

    menuBar()->addMenu(fileMenu);
    menuBar()->addMenu(optionMenu);
    menuBar()->addMenu(helpMenu);
}

bool MainWindow::confirmSave(){
    if(canvas->isModified()){
        QMessageBox::StandardButton ret;
        ret = QMessageBox::warning(this, tr("Canvas"),
                                   tr("The image file has been modified\n"
                                      "Do you want to save your changes?"),
                                   QMessageBox::Save | QMessageBox::Discard | QMessageBox::Cancel);
        if(ret == QMessageBox::Save){
            return saveFile("png");
        } else if(ret == QMessageBox::Cancel){
            return false;
        }
    }
    return true;
}

bool MainWindow::saveFile(const QByteArray &fileFormat){
    QString initialPath = QDir::currentPath() + "/untitled." + fileFormat;
    QString fileName = QFileDialog::getSaveFileName(this, tr("Save as"),
                                                    initialPath,
                                                    tr("%1 Files (*.%2);; All Files(*)")
                                                        .arg(QString::fromLatin1(fileFormat.toUpper()))
                                                        .arg(QString::fromLatin1(fileFormat)));
    if(fileName.isEmpty()){
        return false;
    } else{
        return canvas->saveImage(fileName, fileFormat.constData());
    }
}
MainWindow::~MainWindow()
{
}

