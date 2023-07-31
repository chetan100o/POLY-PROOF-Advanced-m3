pragma circom 2.0.0;

template PolyCircuit () {
    // signal INPUT
    signal input a;
    signal input b;

    // OUTPUT signals from gates
    signal x;
    signal y;

    // final OUTPUT signal output
    signal output q;

    // component gates used to create a custom circuit
    component andGate = AND();
    component notGate = NOT();
    component orGate = OR();

    // circuit logic
    andGate.a <== a;
    andGate.b <== b;
    x <== andGate.out;

    notGate.in <== b;
    y <== notGate.out;

    orGate.a <== x;
    orGate.b <== y;
    q <== orGate.out;

    log("Output Q = ", q);
}

template NOT() {
    signal input in;
    signal output out;
    out <== 1 + in - 2*in;
}

template AND() {
    signal input a;
    signal input b;
    signal output out;
    out <== a * b;
}

template OR() {
    signal input a;
    signal input b;
    signal output out;
    out <== a + b - a * b;
}

component main = PolyCircuit();

/* INPUT = {
    "a": "0",
    "b": "1"
} */