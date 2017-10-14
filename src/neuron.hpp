#ifndef  neuron_INC
#define  neuron_INC

#include <vector>


class Neuron {
	public:
		void subscribe(Neuron* neuron) {
			m_neurons.push_back(neuron);
		}

		void unsubscribe(Neuron* neuron) {

		}
	private:
		std::vector<Neuron*> m_neurons;
};

#endif   /* ----- #ifndef neuron_INC  ----- */
